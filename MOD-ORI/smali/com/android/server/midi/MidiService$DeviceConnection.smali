.class public final Lcom/android/server/midi/MidiService$DeviceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

.field public final mClient:Lcom/android/server/midi/MidiService$Client;

.field public final mDevice:Lcom/android/server/midi/MidiService$Device;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 3

    .line 1
    const-string v0, "MidiService.DeviceConnection"

    .line 2
    .line 3
    const-string/jumbo v1, "notifyClient"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    .line 19
    .line 20
    :goto_0
    invoke-interface {v0, p1, v2}, Landroid/media/midi/IMidiDeviceOpenCallback;->onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    iput-object v1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo p0, "null"

    .line 31
    .line 32
    .line 33
    :goto_0
    return-object p0
.end method
