.class public final Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2

    .line 1
    const-string/jumbo p2, "face/aidl/BiometricTestSessionImpl"

    .line 4
    const-string/jumbo v0, "onClientFinished: "

    .line 7
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 26
    iget p1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 28
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "Remote exception"

    .line 35
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :goto_0
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "face/aidl/BiometricTestSessionImpl"

    .line 4
    const-string/jumbo v1, "onClientStarted: "

    .line 7
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 26
    iget p1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 28
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "Remote exception"

    .line 35
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :goto_0
    return-void
.end method
