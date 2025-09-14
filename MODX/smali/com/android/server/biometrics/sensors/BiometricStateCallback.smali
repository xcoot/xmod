.class public final Lcom/android/server/biometrics/sensors/BiometricStateCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mBiometricState:I

.field public final mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mProviders:Ljava/util/List;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mProviders:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 20
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mUserManager:Landroid/os/UserManager;

    .line 22
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback binder died: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStateCallback"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Removed dead listener for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    const-string p0, "No dead listeners found"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final declared-synchronized broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mProviders:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_4

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 20
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v2

    .line 30
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 42
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mUserManager:Landroid/os/UserManager;

    .line 44
    invoke-virtual {v4}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v4

    .line 52
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 58
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 64
    iget v6, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 66
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 68
    invoke-interface {v1, v6, v7}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->hasEnrollments(II)Z

    .line 71
    move-result v6

    .line 72
    if-eqz p1, :cond_3

    .line 74
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 76
    iget v7, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-interface {p1, v5, v7, v6}, Landroid/hardware/biometrics/IBiometricStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v5

    .line 83
    :try_start_2
    const-string v6, "BiometricStateCallback"

    .line 85
    const-string v7, "Remote exception"

    .line 87
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 95
    iget v7, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 97
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v8

    .line 103
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_2

    .line 109
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v9

    .line 113
    check-cast v9, Landroid/hardware/biometrics/IBiometricStateListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-interface {v9, v5, v7, v6}, Landroid/hardware/biometrics/IBiometricStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    goto :goto_1

    .line 119
    :catch_1
    move-exception v9

    .line 120
    :try_start_4
    const-string v10, "BiometricStateCallback"

    .line 122
    const-string v11, "Remote exception"

    .line 124
    invoke-static {v10, v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    monitor-exit p0

    .line 129
    return-void

    .line 130
    :goto_2
    monitor-exit p0

    .line 131
    throw p1
.end method

.method public final notifyBiometricStateListeners(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/biometrics/IBiometricStateListener;

    .line 19
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricStateListener;->onStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "BiometricStateCallback"

    .line 26
    const-string v2, "Remote exception in biometric state change"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final onBiometricAction()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/biometrics/IBiometricStateListener;

    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricStateListener;->onBiometricAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v1, "BiometricStateCallback"

    .line 27
    const-string v2, "Remote exception in onBiometricAction"

    .line 29
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    const-string v0, "Client finished, state updated to "

    .line 8
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v0, ", client "

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    const-string v0, "BiometricStateCallback"

    .line 30
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    instance-of p2, p1, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    .line 35
    if-eqz p2, :cond_0

    .line 37
    move-object p2, p1

    .line 38
    check-cast p2, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    .line 40
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollmentStateChanged()Z

    .line 43
    move-result v1

    .line 44
    const-string v2, "Enrollment state changed: "

    .line 46
    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    if-eqz v1, :cond_0

    .line 51
    iget v1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 53
    iget p1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 55
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollments()Z

    .line 58
    move-result p2

    .line 59
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v2

    .line 65
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroid/hardware/biometrics/IBiometricStateListener;

    .line 77
    :try_start_0
    invoke-interface {v3, v1, p1, p2}, Landroid/hardware/biometrics/IBiometricStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    const-string v4, "Remote exception"

    .line 84
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    .line 93
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 3
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 5
    const-string v2, "BiometricStateCallback"

    .line 7
    if-eqz v1, :cond_2

    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 12
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 18
    const/4 v1, 0x2

    .line 19
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 28
    const/4 v1, 0x3

    .line 29
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x4

    .line 33
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    .line 38
    if-eqz v1, :cond_3

    .line 40
    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const-string v3, "Other authentication client: "

    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 60
    :goto_0
    const-string v1, "State updated from "

    .line 62
    const-string v3, " to "

    .line 64
    invoke-static {v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    move-result-object v0

    .line 68
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", client "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    .line 93
    return-void
.end method

.method public final declared-synchronized registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricStateListener;->asBinder()Landroid/os/IBinder;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    :try_start_2
    const-string v0, "BiometricStateCallback"

    .line 24
    const-string v1, "Failed to link to death"

    .line 26
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    throw p1
.end method
