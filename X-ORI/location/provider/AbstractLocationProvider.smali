.class public abstract Lcom/android/server/location/provider/AbstractLocationProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mInternalState:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 15
    iput-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    sget-object v1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 5
    iget-object v2, v1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 6
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-object v3, v1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object v4, v1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    iget-boolean v1, v1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    invoke-direct {v2, v1, v3, p2, v4}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    move-object v1, v2

    .line 8
    :goto_2
    invoke-virtual {v1, p3}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p2

    .line 9
    iget-object p3, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    new-instance p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-object v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object v2, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-boolean p2, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    invoke-direct {p3, p2, v1, v2, p4}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    move-object p2, p3

    :goto_3
    const/4 p3, 0x0

    .line 11
    invoke-direct {v0, p3, p2}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    new-instance p1, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    invoke-direct {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract onExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract onFlush(Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;)V
.end method

.method public abstract onSetRequest(Landroid/location/provider/ProviderRequest;)V
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    return-void
.end method

.method public final reportLocation(Landroid/location/LocationResult;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-object v2, p1

    .line 21
    check-cast v2, Landroid/location/LocationResult;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Listener;->onReportLocation(Landroid/location/LocationResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public final setState(Ljava/util/function/UnaryOperator;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Listener;->onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    :goto_0
    return-void
.end method
