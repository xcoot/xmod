.class public abstract Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mAllProps:Ljava/util/List;

.field public final mBiometricServiceSupplier:Ljava/util/function/Supplier;

.field public final mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

.field public volatile mServiceProviders:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mBiometricServiceSupplier:Ljava/util/function/Supplier;

    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized addAllRegisteredCallback(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 4
    :try_start_0
    const-string p1, "BiometricServiceRegistry"

    .line 6
    const-string v0, "addAllRegisteredCallback, callback is null"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 17
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->broadcastAllAuthenticatorsRegistered()V

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-nez p1, :cond_3

    .line 38
    const-string p1, "BiometricServiceRegistry"

    .line 40
    const-string v0, "addAllRegisteredCallback failed to register callback"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_3
    :goto_1
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_2
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final declared-synchronized broadcastAllAuthenticatorsRegistered()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 13
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 16
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 19
    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 24
    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    goto :goto_2

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_4

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    goto :goto_3

    .line 32
    :catch_0
    move-exception v3

    .line 33
    :try_start_3
    const-string v4, "BiometricServiceRegistry"

    .line 35
    const-string v5, "Remote exception in broadcastAllAuthenticatorsRegistered"

    .line 37
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :try_start_4
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 42
    goto :goto_1

    .line 43
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :goto_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 48
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 51
    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 54
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_4
    monitor-exit p0

    .line 60
    throw v0
.end method

.method public final getAllProperties()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    move-result-object p0

    .line 12
    :goto_0
    return-object p0
.end method

.method public final getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 23
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->containsSensor(I)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    move-result-object p0

    .line 12
    :goto_0
    return-object p0
.end method

.method public final getSingleProvider()Landroid/util/Pair;
    .locals 6

    .line 1
    const-string v0, "Single sensor: "

    .line 3
    const-string/jumbo v1, "getSingleProvider() called but multiple sensors present: "

    .line 6
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "BiometricServiceRegistry"

    .line 11
    if-eqz v2, :cond_4

    .line 13
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    goto/16 :goto_3

    .line 23
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    const/4 v5, 0x1

    .line 30
    if-le v2, v5, :cond_1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    move-result v1

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 65
    iget v1, v1, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_2

    .line 73
    new-instance v0, Landroid/util/Pair;

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-object v0

    .line 83
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, ", but provider not found"

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-object v3

    .line 104
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 106
    if-nez v1, :cond_3

    .line 108
    const-string/jumbo p0, "mAllProps: null"

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v2, "mAllProps.size(): "

    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 122
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 125
    move-result p0

    .line 126
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    const-string v2, "This shouldn\'t happen. "

    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    invoke-static {v4, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    throw v0

    .line 151
    :cond_4
    :goto_3
    const-string p0, "No sensors found"

    .line 153
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v3
.end method

.method public abstract invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
.end method

.method public registerAllInBackground(Ljava/util/function/Supplier;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/List;

    .line 7
    if-nez p1, :cond_0

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mBiometricServiceSupplier:Ljava/util/function/Supplier;

    .line 16
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/hardware/biometrics/IBiometricService;

    .line 22
    if-eqz v0, :cond_5

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_4

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 45
    const-string v4, "BiometricServiceRegistry"

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v6, "registerAllInBackground: "

    .line 52
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-nez v3, :cond_1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    .line 71
    move-result-object v3

    .line 72
    move-object v4, v3

    .line 73
    check-cast v4, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v4

    .line 79
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 91
    if-nez v5, :cond_2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p0, v0, v5}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    .line 109
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->broadcastAllAuthenticatorsRegistered()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    monitor-exit p0

    .line 122
    throw p1

    .line 123
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 125
    const-string/jumbo p1, "biometric service cannot be null"

    .line 128
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0
.end method

.method public abstract registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V
.end method
