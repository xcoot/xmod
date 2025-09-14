.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStopUserClient;
.super Lcom/android/server/biometrics/sensors/StopUserClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStopUserClient;->startHalOperation()V

    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/biometrics/fingerprint/ISession;

    .line 9
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "FingerprintStopUserClient"

    .line 16
    const-string v2, "Remote exception"

    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 29
    :goto_0
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
