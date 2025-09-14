.class public final Lcom/android/server/location/provider/MockableLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

.field public final mOwnerLock:Ljava/lang/Object;

.field public mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

.field public mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

.field public mRequest:Landroid/location/provider/ProviderRequest;

.field public mStarted:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-direct {p0, v0, v1, v1, v2}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 12
    .line 13
    sget-object p1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 26
    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "allowed="

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 36
    .line 37
    invoke-static {v0, v2, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v2, "identity="

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string/jumbo v2, "extra attribution tags="

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v2, "properties="

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    if-eqz v1, :cond_3

    .line 117
    .line 118
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    throw p0
.end method

.method public final isMock()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 9
    .line 10
    if-ne p0, v1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final onExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->sendExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final onFlush(Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->flush(Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;->run()V

    .line 15
    .line 16
    .line 17
    :goto_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    xor-int/2addr v1, v2

    .line 8
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 9
    .line 10
    .line 11
    iput-boolean v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->start()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 23
    .line 24
    sget-object v2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 17
    .line 18
    sget-object v2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->stop()V

    .line 41
    .line 42
    .line 43
    :cond_1
    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final setMockProviderLocation(Landroid/location/Location;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroid/location/Location;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {v1, p1}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/location/provider/MockLocationProvider;->mLocation:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    :try_start_1
    new-array p1, p1, [Landroid/location/Location;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v1, p1, v2

    .line 31
    .line 32
    invoke-static {p1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_1
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_2
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw p0
.end method

.method public final setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 14
    .line 15
    .line 16
    iget-boolean p1, v0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    sget-object p1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->stop()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 29
    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    iget-object v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;-><init>(Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-boolean v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 50
    .line 51
    iget-boolean v1, v0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->start()V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 71
    .line 72
    iget-boolean v1, v0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->stop()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    sget-object p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 90
    .line 91
    :cond_5
    :goto_0
    new-instance v0, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-direct {v0, v1, p1}, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
