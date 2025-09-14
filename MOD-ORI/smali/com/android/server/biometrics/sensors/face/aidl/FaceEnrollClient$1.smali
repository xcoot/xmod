.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onClientStarted$com$android$server$biometrics$sensors$face$aidl$FaceEnrollClient$1(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onClientStarted$com$android$server$biometrics$sensors$face$aidl$FaceEnrollClient$2(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    .line 22
    .line 23
    const-string p2, "FaceEnrollClient"

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const-string/jumbo p1, "mHwPreviewHandle is null even though mPreviewSurface is not null."

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    :try_start_0
    const-string p1, "Closing mHwPreviewHandle"

    .line 43
    .line 44
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p1, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    .line 52
    .line 53
    array-length v1, p1

    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-ge v2, v1, :cond_2

    .line 56
    .line 57
    aget-object v3, p1, v2

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    const-string v1, "Failed to close mPreviewSurface"

    .line 69
    .line 70
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :cond_2
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 74
    .line 75
    :cond_3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    const-string p1, "Releasing mOsPreviewHandle"

    .line 80
    .line 81
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->releaseSurfaceHandle(Landroid/os/NativeHandle;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 90
    .line 91
    :cond_4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    const-string p1, "Releasing mPreviewSurface"

    .line 96
    .line 97
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 103
    .line 104
    .line 105
    :cond_5
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method
