.class public abstract Lcom/android/server/location/listeners/RemovableListenerRegistration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# instance fields
.field public mActive:Z

.field public mActiveMotionControl:Z

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public volatile mKey:Ljava/lang/Object;

.field public volatile mListener:Ljava/lang/Object;

.field public final mRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    .line 17
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    iput-object p2, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method public final executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v1, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v1, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 8
    new-instance v2, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;

    .line 10
    invoke-direct {v2, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 13
    invoke-interface {p0, v0, v1, p1, v2}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    .line 16
    return-void
.end method

.method public abstract getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ListenerRegistration"

    .line 3
    return-object p0
.end method

.method public abstract onActive()V
.end method

.method public onInactive()V
    .locals 0

    .line 1
    return-void
.end method

.method public onListenerUnregister()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
.end method

.method public abstract onRegister()V
.end method

.method public abstract onUnregister()V
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 21
    :cond_0
    return-void
.end method
