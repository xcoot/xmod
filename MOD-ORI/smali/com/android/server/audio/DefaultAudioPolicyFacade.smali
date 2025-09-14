.class public final Lcom/android/server/audio/DefaultAudioPolicyFacade;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mServiceHolder:Lcom/android/server/audio/ServiceHolder;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/audio/ServiceHolder;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/android/server/audio/ServiceHolder;-><init>(Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    .line 15
    .line 16
    new-instance p0, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/os/IInterface;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    new-instance v1, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public final isHotwordStreamSupported(Z)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/IInterface;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mServiceProvider:Lcom/android/server/audio/ServiceHolder$2;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mServiceName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/audio/ServiceHolder;->onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    check-cast v0, Landroid/media/IAudioPolicyService;

    .line 30
    .line 31
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioPolicyService;->isHotwordStreamSupported(Z)Z

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return p0

    .line 36
    :catch_0
    invoke-interface {v0}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method
