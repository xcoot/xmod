.class public final Lcom/android/server/midi/MidiService$Device$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$1:Lcom/android/server/midi/MidiService$Device;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService$Device;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    const-string v0, "++++ onServiceConnected() mBluetoothDevice:"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    .line 10
    iget-object v0, v0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v0, "MidiService.Device"

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    .line 26
    iget-object p1, p1, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-static {p2}, Landroid/media/midi/IBluetoothMidiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IBluetoothMidiService;

    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "++++ mBluetoothMidiService:"

    .line 38
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-eqz p1, :cond_0

    .line 53
    :try_start_0
    iget-object p2, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    .line 55
    iget-object p2, p2, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 57
    invoke-interface {p1, p2}, Landroid/media/midi/IBluetoothMidiService;->addBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/os/IBinder;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    .line 64
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    const-string p2, "Could not call addBluetoothDevice()"

    .line 69
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_0
    const/4 p1, 0x0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-static {p2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    .line 77
    move-result-object p1

    .line 78
    :goto_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 83
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 7
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    .line 9
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 11
    return-void
.end method
