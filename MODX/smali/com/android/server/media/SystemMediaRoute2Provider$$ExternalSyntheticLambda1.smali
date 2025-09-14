.class public final synthetic Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 15
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 18
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 30
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    .line 32
    invoke-interface {v0, v1}, Lcom/android/server/media/DeviceRouteController;->start(Landroid/os/UserHandle;)V

    .line 35
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 37
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    .line 39
    invoke-interface {v0, p0}, Lcom/android/server/media/BluetoothRouteController;->start(Landroid/os/UserHandle;)V

    .line 42
    return-void

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBluetoothRouteController:Lcom/android/server/media/BluetoothRouteController;

    .line 45
    invoke-interface {v0}, Lcom/android/server/media/BluetoothRouteController;->stop()V

    .line 48
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 50
    invoke-interface {v0}, Lcom/android/server/media/DeviceRouteController;->stop()V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
