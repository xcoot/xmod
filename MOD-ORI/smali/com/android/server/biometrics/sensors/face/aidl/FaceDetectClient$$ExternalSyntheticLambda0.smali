.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 4
    .line 5
    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "FaceDetectClient"

    .line 23
    .line 24
    const-string v1, "Remote exception when requesting face detect"

    .line 25
    .line 26
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-interface {p0, v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
