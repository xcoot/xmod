.class public interface abstract Lcom/android/server/media/BluetoothRouteController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract getAllBluetoothRoutes()Ljava/util/List;
.end method

.method public abstract getSelectedRoute()Landroid/media/MediaRoute2Info;
.end method

.method public abstract getTransferableRoutes()Ljava/util/List;
.end method

.method public abstract start(Landroid/os/UserHandle;)V
.end method

.method public abstract stop()V
.end method

.method public abstract transferTo(Ljava/lang/String;)V
.end method

.method public abstract updateVolumeForDevices(II)Z
.end method
