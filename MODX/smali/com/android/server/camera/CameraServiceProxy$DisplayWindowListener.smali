.class public final Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 3
    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/ICameraService;->notifyDisplayConfigurationChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string p1, "Could not notify cameraserver, remote exception: "

    .line 17
    const-string p2, "CameraService_proxy"

    .line 19
    invoke-static {p1, p0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method
