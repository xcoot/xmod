.class Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

.field public final mSensorsPendingInvalidation:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 6
    new-instance p5, Landroid/util/ArraySet;

    .line 8
    invoke-direct {p5}, Landroid/util/ArraySet;-><init>()V

    .line 11
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 13
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p2

    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p5

    .line 21
    if-eqz p5, :cond_3

    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p5

    .line 27
    check-cast p5, Lcom/android/server/biometrics/BiometricSensor;

    .line 29
    iget v0, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 31
    if-ne v0, p4, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v0, p5, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 36
    const/16 v1, 0xf

    .line 38
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :try_start_0
    iget-object v0, p5, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, p3, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    .line 54
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-nez v0, :cond_2

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "BiometricService"

    .line 61
    const-string v2, "Remote Exception"

    .line 63
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_2
    const-string v0, "BiometricService"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    const-string v2, "Requesting authenticatorId invalidation for sensor: "

    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget v2, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 77
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 83
    iget v1, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    iget-object v0, p5, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 95
    new-instance v1, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;

    .line 97
    invoke-direct {v1, p0, p5}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;-><init>(Lcom/android/server/biometrics/BiometricService$InvalidationTracker;Lcom/android/server/biometrics/BiometricSensor;)V

    .line 100
    invoke-interface {v0, p3, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    goto :goto_0

    .line 104
    :catch_1
    move-exception p5

    .line 105
    const-string v0, "BiometricService"

    .line 107
    const-string v1, "RemoteException"

    .line 109
    invoke-static {v0, v1, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    throw p1

    .line 116
    :cond_3
    monitor-enter p0

    .line 117
    :try_start_4
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 119
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 122
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    if-eqz p1, :cond_4

    .line 125
    :try_start_5
    const-string p1, "BiometricService"

    .line 127
    const-string p2, "No sensors require invalidation"

    .line 129
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 134
    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    goto :goto_1

    .line 138
    :catchall_1
    move-exception p1

    .line 139
    goto :goto_2

    .line 140
    :catch_2
    move-exception p1

    .line 141
    :try_start_6
    const-string p2, "BiometricService"

    .line 143
    const-string p3, "Remote Exception"

    .line 145
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_4
    :goto_1
    monitor-exit p0

    .line 149
    return-void

    .line 150
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 151
    throw p1
.end method


# virtual methods
.method public onInvalidated(I)V
    .locals 3

    .line 1
    const-string v0, "Sensor "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    check-cast v1, Landroid/util/ArraySet;

    .line 12
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 15
    const-string v1, "BiometricService"

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " invalidated, remaining size: "

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 32
    check-cast p1, Landroid/util/ArraySet;

    .line 34
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 50
    check-cast p1, Landroid/util/ArraySet;

    .line 52
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 55
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz p1, :cond_0

    .line 58
    :try_start_1
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 60
    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p1

    .line 67
    :try_start_2
    const-string v0, "BiometricService"

    .line 69
    const-string v1, "Remote Exception"

    .line 71
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_0
    :goto_0
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p1
.end method
