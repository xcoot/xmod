.class public final Lcom/android/server/audio/ServiceHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCastFunction:Ljava/util/function/Function;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mOnDeathTasks:Ljava/util/Set;

.field public final mOnStartTasks:Ljava/util/Set;

.field public final mService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mServiceListener:Lcom/android/server/audio/ServiceHolder$1;

.field public final mServiceName:Ljava/lang/String;

.field public final mServiceProvider:Lcom/android/server/audio/ServiceHolder$2;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/audio/ServiceHolder$2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    .line 21
    .line 22
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mOnDeathTasks:Ljava/util/Set;

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/audio/ServiceHolder$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/android/server/audio/ServiceHolder$1;-><init>(Lcom/android/server/audio/ServiceHolder;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v2, "media.audio_policy"

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/audio/ServiceHolder;->mServiceName:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/audio/ServiceHolder;->mCastFunction:Ljava/util/function/Function;

    .line 39
    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mServiceProvider:Lcom/android/server/audio/ServiceHolder$2;

    .line 46
    .line 47
    const-string p1, "ServiceHolder: "

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/server/audio/ServiceHolder;->mTag:Ljava/lang/String;

    .line 54
    .line 55
    :try_start_0
    invoke-static {v2, v1}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string p2, "ServiceManager died!!"

    .line 63
    .line 64
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method


# virtual methods
.method public final attemptClear(Landroid/os/IBinder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/IInterface;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/audio/ServiceHolder;->mOnDeathTasks:Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/function/Consumer;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 53
    .line 54
    new-instance v3, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-direct {v3, v1, v0, v4}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public final binderDied()V
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Wrong binderDied called, this should never happen"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mCastFunction:Ljava/util/function/Function;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/IInterface;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/util/function/Consumer;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    new-instance v4, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/4 v5, 0x2

    .line 45
    invoke-direct {v4, v2, v0, v5}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mTag:Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, "Immediate service death. Service crash-looping"

    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-object v0
.end method
