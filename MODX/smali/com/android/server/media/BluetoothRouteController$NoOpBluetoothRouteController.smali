.class public final Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteController;


# virtual methods
.method public final getAllBluetoothRoutes()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getTransferableRoutes()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final start(Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final stop()V
    .locals 0

    .line 1
    return-void
.end method

.method public final transferTo(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateVolumeForDevices(II)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
