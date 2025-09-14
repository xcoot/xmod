.class public final Lcom/android/server/stats/pull/StatsPullAtomService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;


# instance fields
.field public final synthetic val$bluetoothReceiver:Landroid/os/SynchronousResultReceiver;


# direct methods
.method public constructor <init>(Landroid/os/SynchronousResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$1;->val$bluetoothReceiver:Landroid/os/SynchronousResultReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "controller_activity"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$1;->val$bluetoothReceiver:Landroid/os/SynchronousResultReceiver;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onBluetoothActivityEnergyInfoError(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "error reading Bluetooth stats: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "StatsPullAtomService"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "controller_activity"

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$1;->val$bluetoothReceiver:Landroid/os/SynchronousResultReceiver;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, p1}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
