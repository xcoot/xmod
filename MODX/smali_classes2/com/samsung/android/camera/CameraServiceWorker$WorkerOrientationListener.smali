.class public final Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLatestOrientation:I

.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-class p2, Landroid/hardware/display/DisplayManager;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 15
    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iput p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v0, 0x1

    .line 33
    if-eq p1, v0, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    if-eq p1, v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    iput p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 p1, 0x5a

    .line 45
    .line 46
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/16 p1, 0xb4

    .line 50
    .line 51
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/16 p1, 0x10e

    .line 55
    .line 56
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    .line 57
    .line 58
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x2d

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x5a

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x5a

    .line 6
    .line 7
    rem-int/lit16 p1, p1, 0x168

    .line 8
    .line 9
    iget v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_1

    .line 12
    .line 13
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/ICameraService;->notifyDeviceInjectorOrientationChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string p1, "Could not notify cameraserver, remote exception: "

    .line 30
    .line 31
    const-string v0, "CameraService_worker"

    .line 32
    .line 33
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method
