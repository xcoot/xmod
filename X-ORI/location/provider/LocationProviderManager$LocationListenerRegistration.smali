.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;I)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->isMyProcess()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    move-object v5, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :goto_1
    move-object v1, p0

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move-object v4, p3

    .line 22
    move-object v6, p4

    .line 23
    move v7, p5

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "LocationManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " provider registration "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " died"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance v0, Ljava/lang/AssertionError;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->onTransportFailure(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onProviderOperationFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->onTransportFailure(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRegister()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onRegister()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    check-cast v0, Landroid/os/IBinder;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final onTransportFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/os/RemoteException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " provider registration "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " removed"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "LocationManagerService"

    .line 37
    .line 38
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final onUnregister()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, Landroid/os/IBinder;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "ListenerRegistration"

    .line 15
    .line 16
    const-string/jumbo v2, "failed to unregister binder death listener"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-super {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onUnregister()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
