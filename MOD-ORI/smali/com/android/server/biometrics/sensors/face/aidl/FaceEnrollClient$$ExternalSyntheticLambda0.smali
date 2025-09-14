.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

.field public final synthetic f$2:Landroid/hardware/keymaster/HardwareAuthToken;

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;Landroid/hardware/keymaster/HardwareAuthToken;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;->f$3:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;->f$3:[B

    .line 8
    .line 9
    move-object v7, p1

    .line 10
    check-cast v7, Landroid/hardware/biometrics/common/OperationContext;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    :try_start_0
    iget p1, v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-lt p1, v2, :cond_0

    .line 20
    .line 21
    new-instance p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/hardware/biometrics/face/FaceEnrollOptions;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v3, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->hardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 27
    .line 28
    iput-byte p0, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->enrollmentType:B

    .line 29
    .line 30
    iput-object v5, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->features:[B

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iput-object v2, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->nativeHandlePreview:Landroid/hardware/common/NativeHandle;

    .line 34
    .line 35
    iput-object v7, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->context:Landroid/hardware/biometrics/common/OperationContext;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    .line 38
    .line 39
    iput-object v2, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->surfacePreview:Landroid/view/Surface;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1, p1}, Landroid/hardware/biometrics/face/ISession;->enrollWithOptions(Landroid/hardware/biometrics/face/FaceEnrollOptions;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/face/ISession;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_0
    const-string v1, "FaceEnrollClient"

    .line 69
    .line 70
    const-string v2, "Exception when requesting enroll"

    .line 71
    .line 72
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x2

    .line 76
    invoke-virtual {v0, p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onError(II)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 80
    .line 81
    invoke-interface {p1, v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-void
.end method
