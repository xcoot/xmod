.class public final synthetic Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 3
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->updateBluetoothRoutes()V

    .line 8
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 10
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    .line 12
    invoke-interface {p0}, Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated()V

    .line 15
    return-void
.end method
