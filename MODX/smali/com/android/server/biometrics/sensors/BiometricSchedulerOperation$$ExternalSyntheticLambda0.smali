.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 5
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 7
    const/4 v2, 0x5

    .line 8
    if-ne v1, v2, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v3, "[Watchdog Triggered]: "

    .line 15
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const-string v3, "BiometricSchedulerOperation"

    .line 27
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v1, 0x0

    .line 31
    :try_start_0
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 33
    iget v5, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 35
    iget v6, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 37
    invoke-virtual {v4, v5, v6, v2, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    const-string v2, "Remote exception when trying to send error in cancel watchdog."

    .line 43
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 55
    :goto_1
    return-void
.end method
