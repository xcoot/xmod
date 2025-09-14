.class public abstract Lcom/android/server/location/listeners/ListenerMultiplexer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveRegistrationsCount:I

.field public mMerged:Ljava/lang/Object;

.field public final mMultiplexerLock:Ljava/lang/Object;

.field public final mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

.field public final mRegistrations:Landroid/util/ArrayMap;

.field public mServiceRegistered:Z

.field public final mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 18
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 25
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    .line 30
    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    .line 35
    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 37
    return-void
.end method


# virtual methods
.method public final deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .locals 6

    .line 13
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 16
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 17
    iget-boolean v5, v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    if-nez v5, :cond_0

    .line 18
    iget-boolean v5, v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    if-eqz v5, :cond_1

    .line 19
    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 20
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 22
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    .line 23
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final deliverToListeners(Ljava/util/function/Function;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 5
    iget-boolean v5, v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    if-nez v5, :cond_0

    .line 6
    iget-boolean v5, v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    if-eqz v5, :cond_1

    .line 7
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v4, v5}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 11
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    .line 12
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    const-string/jumbo p3, "service: "

    .line 7
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getServiceState()Ljava/lang/String;

    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 20
    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 25
    move-result p3

    .line 26
    if-nez p3, :cond_1

    .line 28
    const-string/jumbo p3, "listeners:"

    .line 31
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 39
    move-result p3

    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-ge v0, p3, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 45
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 51
    const-string v2, "  "

    .line 53
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 59
    iget-boolean v1, v1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    .line 61
    if-nez v1, :cond_0

    .line 63
    const-string v1, " (inactive)"

    .line 65
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 74
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    monitor-exit p1

    .line 78
    return-void

    .line 79
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public final findRegistration(Ljava/util/function/Predicate;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 6
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_1

    .line 19
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 27
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 30
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    if-eqz v5, :cond_0

    .line 33
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    .line 36
    monitor-exit v0

    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    .line 49
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    return v3

    .line 51
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 54
    goto :goto_2

    .line 55
    :catchall_2
    move-exception p1

    .line 56
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    :goto_2
    throw p0

    .line 60
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    throw p0
.end method

.method public final getRegistrationCountWith(Ljava/util/function/Predicate;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 22
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return v3

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public getServiceState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string/jumbo p0, "registered"

    .line 17
    return-object p0

    .line 18
    :cond_1
    const-string/jumbo p0, "unregistered"

    .line 21
    return-object p0
.end method

.method public abstract isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z
.end method

.method public abstract mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
.end method

.method public onActive()V
    .locals 0

    .line 1
    return-void
.end method

.method public onHalRestarted()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->resetService()V

    .line 4
    return-void
.end method

.method public onInactive()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRegister()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-boolean v2, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    .line 17
    if-eq v0, v2, :cond_4

    .line 19
    iput-boolean v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    .line 21
    if-eqz v0, :cond_2

    .line 23
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    .line 25
    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    .line 28
    if-ne v0, v1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onActive()V

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onActive()V

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onInactive()V

    .line 40
    iget p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    .line 42
    sub-int/2addr p1, v1

    .line 43
    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    .line 45
    if-nez p1, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onInactive()V

    .line 50
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 53
    :cond_4
    return-void
.end method

.method public abstract onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
.end method

.method public abstract onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
.end method

.method public onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 4
    invoke-virtual {p0, p3, p4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 7
    return-void
.end method

.method public onSettingChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 4
    return-void
.end method

.method public onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUnregister()V
    .locals 0

    .line 1
    return-void
.end method

.method public final putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 12
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v1, v2

    .line 18
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 21
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 24
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 26
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 31
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 34
    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 39
    move-result v3

    .line 40
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x0

    .line 47
    if-ltz v4, :cond_0

    .line 49
    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 51
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 57
    iput-object v5, v6, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    .line 59
    invoke-virtual {v6}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onListenerUnregister()V

    .line 62
    invoke-virtual {p0, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 65
    invoke-virtual {p0, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 68
    invoke-virtual {v6}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onUnregister()V

    .line 71
    move-object v5, v6

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :cond_0
    :goto_0
    if-ltz v4, :cond_1

    .line 77
    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 79
    invoke-virtual {v6, v4, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 85
    invoke-virtual {v4, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_1
    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegister()V

    .line 93
    :cond_2
    iput-object p1, p2, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 95
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRegister()V

    .line 98
    if-nez v5, :cond_3

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {p0, p1, v5, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 107
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 113
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 116
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    return-void

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    goto :goto_7

    .line 120
    :catchall_2
    move-exception p0

    .line 121
    goto :goto_5

    .line 122
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 125
    goto :goto_4

    .line 126
    :catchall_3
    move-exception p1

    .line 127
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 130
    :goto_4
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 131
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 134
    goto :goto_6

    .line 135
    :catchall_4
    move-exception p1

    .line 136
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 139
    :goto_6
    throw p0

    .line 140
    :goto_7
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 141
    throw p0
.end method

.method public abstract registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
.end method

.method public final removeRegistration(I)V
    .locals 5

    .line 20
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 22
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 24
    :try_start_1
    iput-object v4, v1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    .line 25
    invoke-virtual {v1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onListenerUnregister()V

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 29
    invoke-virtual {v1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onUnregister()V

    .line 30
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 31
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onUnregister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 34
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method public final removeRegistration(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(I)V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    if-eq v2, p2, :cond_1

    .line 11
    monitor-exit v0

    return-void

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {p2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 13
    iput-object p2, v2, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    .line 14
    invoke-virtual {v2}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onListenerUnregister()V

    .line 15
    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 16
    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 17
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->markForRemoval(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(I)V

    .line 19
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeRegistrationIf(Ljava/util/function/Predicate;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 6
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 12
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 15
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 17
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 22
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_0
    if-ge v4, v3, :cond_1

    .line 34
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 39
    move-result-object v5

    .line 40
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_0

    .line 46
    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 48
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 54
    invoke-virtual {p0, v5, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 66
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 69
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    return-void

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_6

    .line 73
    :catchall_2
    move-exception p0

    .line 74
    goto :goto_4

    .line 75
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 78
    goto :goto_3

    .line 79
    :catchall_3
    move-exception p1

    .line 80
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    :goto_3
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 84
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 87
    goto :goto_5

    .line 88
    :catchall_4
    move-exception p1

    .line 89
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 92
    :goto_5
    throw p0

    .line 93
    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 94
    throw p0
.end method

.method public reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final resetService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 14
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    .line 17
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public abstract unregisterWithService()V
.end method

.method public final updateRegistration(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 6
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 11
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 19
    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    if-gez p2, :cond_0

    .line 22
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 28
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_5

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    :try_start_5
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 37
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 43
    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 52
    goto :goto_0

    .line 53
    :catchall_2
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 58
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 61
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 62
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :goto_1
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 67
    goto :goto_2

    .line 68
    :catchall_3
    move-exception p1

    .line 69
    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 72
    :goto_2
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 73
    :goto_3
    :try_start_a
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 76
    goto :goto_4

    .line 77
    :catchall_4
    move-exception p1

    .line 78
    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 81
    :goto_4
    throw p0

    .line 82
    :goto_5
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 83
    throw p0
.end method

.method public final updateRegistrations(Ljava/util/function/Predicate;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 6
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 11
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14
    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v3, :cond_1

    .line 23
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 31
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_0

    .line 37
    invoke-virtual {p0, v5}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 49
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 52
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 53
    return-void

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_6

    .line 56
    :catchall_2
    move-exception p0

    .line 57
    goto :goto_4

    .line 58
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 61
    goto :goto_3

    .line 62
    :catchall_3
    move-exception p1

    .line 63
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    :goto_3
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 67
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 70
    goto :goto_5

    .line 71
    :catchall_4
    move-exception p1

    .line 72
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    :goto_5
    throw p0

    .line 76
    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 77
    throw p0
.end method

.method public final updateService()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget v2, v1, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 13
    move v2, v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v3

    .line 16
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 17
    if-eqz v2, :cond_2

    .line 19
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 21
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    :try_start_4
    iget v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 25
    if-eqz v1, :cond_1

    .line 27
    move v3, v4

    .line 28
    :cond_1
    :try_start_5
    monitor-exit p0

    .line 29
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 32
    iput-boolean v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 34
    :try_start_6
    monitor-exit p0

    .line 35
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_4

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :catchall_2
    move-exception v1

    .line 43
    :try_start_7
    monitor-exit p0

    .line 44
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 45
    :goto_1
    :try_start_8
    monitor-exit p0

    .line 46
    throw v1

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 49
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 52
    move-result v1

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    move v4, v3

    .line 59
    :goto_2
    if-ge v4, v1, :cond_4

    .line 61
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 63
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    .line 69
    iget-boolean v6, v5, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    .line 71
    if-eqz v6, :cond_3

    .line 73
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    move-result v1

    .line 83
    const/4 v4, 0x0

    .line 84
    if-eqz v1, :cond_5

    .line 86
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 88
    if-eqz v1, :cond_9

    .line 90
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 92
    iput-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    iget-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 104
    if-eqz v3, :cond_7

    .line 106
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 108
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_9

    .line 114
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z

    .line 119
    move-result v2

    .line 120
    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 122
    if-eqz v2, :cond_6

    .line 124
    move-object v4, v1

    .line 125
    :cond_6
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 127
    goto :goto_3

    .line 128
    :cond_7
    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 131
    move-result v2

    .line 132
    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 134
    if-eqz v2, :cond_8

    .line 136
    move-object v4, v1

    .line 137
    :cond_8
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 139
    :cond_9
    :goto_3
    monitor-exit v0

    .line 140
    return-void

    .line 141
    :catchall_3
    move-exception p0

    .line 142
    monitor-exit v1

    .line 143
    throw p0

    .line 144
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 145
    throw p0
.end method
