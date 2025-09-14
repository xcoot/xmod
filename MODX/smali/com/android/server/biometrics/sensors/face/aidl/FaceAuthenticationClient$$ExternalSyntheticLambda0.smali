.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 5
    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 13
    move-result-object p0

    .line 14
    iget-wide v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 16
    invoke-interface {p0, v1, v2, p1}, Landroid/hardware/biometrics/face/ISession;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 19
    move-result-object p0

    .line 20
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string p1, "FaceAuthenticationClient"

    .line 26
    const-string v1, "Remote exception when requesting auth"

    .line 28
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    const/4 p0, 0x1

    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 36
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 38
    invoke-interface {p0, v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 41
    :goto_0
    return-void
.end method
