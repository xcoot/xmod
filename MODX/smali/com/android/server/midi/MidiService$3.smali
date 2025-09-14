.class public final Lcom/android/server/midi/MidiService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/midi/MidiService;

.field public final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/midi/MidiService$3;->this$0:Lcom/android/server/midi/MidiService;

    .line 6
    iput-object p2, p0, Lcom/android/server/midi/MidiService$3;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 8
    return-void
.end method


# virtual methods
.method public final onDeviceOpened(Landroid/media/midi/MidiDevice;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onDeviceOpened() device:"

    .line 4
    iget-object v1, p0, Lcom/android/server/midi/MidiService$3;->this$0:Lcom/android/server/midi/MidiService;

    .line 6
    iget-object v1, v1, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    const-string v2, "MidiService"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/server/midi/MidiService$3;->this$0:Lcom/android/server/midi/MidiService;

    .line 28
    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    .line 30
    iget-object p0, p0, Lcom/android/server/midi/MidiService$3;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 32
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method
