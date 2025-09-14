.class public final synthetic Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$1:Z

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "Binder died, operation: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "BaseClientMonitor"

    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 29
    if-eqz v1, :cond_0

    .line 31
    const-string p0, "Binder died but client is finished, ignoring"

    .line 33
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isInterruptable()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 43
    const-string v1, "Binder died, cancelling client"

    .line 45
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 54
    if-eqz p0, :cond_2

    .line 56
    new-instance p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 58
    new-instance v1, Landroid/hardware/biometrics/IBiometricSensorReceiver$Default;

    .line 60
    invoke-direct {v1}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Default;-><init>()V

    .line 63
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    .line 66
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 68
    :cond_2
    :goto_0
    return-void
.end method
