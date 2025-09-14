.class public final Lcom/android/server/midi/MidiService$Device;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mDeviceConnections:Ljava/util/ArrayList;

.field public final mDeviceConnectionsAdded:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mDeviceConnectionsRemoved:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field public mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

.field public mPreviousCounterInstant:Ljava/time/Instant;

.field public mServer:Landroid/media/midi/IMidiDeviceServer;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field public final mServiceInfo:Landroid/content/pm/ServiceInfo;

.field public final mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mTotalTimeConnectedNs:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mUid:I

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnectionsAdded:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnectionsRemoved:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mTotalTimeConnectedNs:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 24
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 25
    iget p1, p1, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    iput p1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 26
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/midi/MidiService$Device;->mUserId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnectionsAdded:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnectionsRemoved:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mTotalTimeConnectedNs:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    iput-object p3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 10
    iput-object p4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 11
    iput p5, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 12
    iput p6, p0, Lcom/android/server/midi/MidiService$Device;->mUserId:I

    .line 13
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p3, "bluetooth_device"

    const-class p4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 14
    invoke-virtual {p0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "MidiService.Device"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Device died: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final closeLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 22
    .line 23
    iget-object v4, v2, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v4, v3, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 39
    .line 40
    iget-object v5, v2, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 41
    .line 42
    iget-object v5, v5, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Lcom/android/server/midi/MidiService;->removeUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v3

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    throw p0

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    :goto_1
    iget-object v3, v2, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    .line 55
    .line 56
    iget-object v4, v3, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    .line 59
    .line 60
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v2, v3, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_0

    .line 70
    .line 71
    iget-object v2, v3, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_0

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mTotalTimeConnectedNs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 97
    .line 98
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 99
    .line 100
    invoke-static {v4, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/time/Duration;->toNanos()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 112
    .line 113
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/midi/MidiService$Device;->logMetrics(Z)V

    .line 114
    .line 115
    .line 116
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 122
    .line 123
    if-nez v0, :cond_4

    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    new-instance v0, Landroid/media/midi/MidiDeviceStatus;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 134
    .line 135
    invoke-direct {v0, v1}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 139
    .line 140
    :goto_2
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_5
    return-void

    .line 152
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    throw p0
.end method

.method public final isUidAllowed(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public final isUserIdAllowed(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/midi/MidiService$Device;->mUserId:I

    .line 11
    .line 12
    if-ne p0, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
.end method

.method public final logMetrics(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnectionsAdded:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    if-lez v0, :cond_4

    .line 12
    .line 13
    new-instance v1, Landroid/media/MediaMetrics$Item;

    .line 14
    .line 15
    const-string v2, "audio.midi"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE_ID:Landroid/media/MediaMetrics$Key;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Landroid/media/MediaMetrics$Property;->INPUT_PORT_COUNT:Landroid/media/MediaMetrics$Key;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Landroid/media/MediaMetrics$Property;->OUTPUT_PORT_COUNT:Landroid/media/MediaMetrics$Key;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v2, Landroid/media/MediaMetrics$Property;->HARDWARE_TYPE:Landroid/media/MediaMetrics$Key;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    sget-object v2, Landroid/media/MediaMetrics$Property;->DURATION_NS:Landroid/media/MediaMetrics$Key;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mTotalTimeConnectedNs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-object v2, Landroid/media/MediaMetrics$Property;->OPENED_COUNT:Landroid/media/MediaMetrics$Key;

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v1, Landroid/media/MediaMetrics$Property;->CLOSED_COUNT:Landroid/media/MediaMetrics$Key;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnectionsRemoved:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE_DISCONNECTED:Landroid/media/MediaMetrics$Key;

    .line 133
    .line 134
    const-string/jumbo v2, "false"

    .line 135
    .line 136
    .line 137
    const-string/jumbo v3, "true"

    .line 138
    .line 139
    .line 140
    if-eqz p1, :cond_0

    .line 141
    .line 142
    move-object p1, v3

    .line 143
    goto :goto_0

    .line 144
    :cond_0
    move-object p1, v2

    .line 145
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    sget-object v0, Landroid/media/MediaMetrics$Property;->IS_SHARED:Landroid/media/MediaMetrics$Key;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_1

    .line 158
    .line 159
    move-object v1, v3

    .line 160
    goto :goto_1

    .line 161
    :cond_1
    move-object v1, v2

    .line 162
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    sget-object v0, Landroid/media/MediaMetrics$Property;->SUPPORTS_MIDI_UMP:Landroid/media/MediaMetrics$Key;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 169
    .line 170
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {v4}, Lcom/android/server/midi/MidiService;->isUmpDevice(Landroid/media/midi/MidiDeviceInfo;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_2

    .line 180
    .line 181
    move-object v1, v3

    .line 182
    goto :goto_2

    .line 183
    :cond_2
    move-object v1, v2

    .line 184
    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    sget-object v0, Landroid/media/MediaMetrics$Property;->USING_ALSA:Landroid/media/MediaMetrics$Key;

    .line 189
    .line 190
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 191
    .line 192
    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-string v4, "alsa_card"

    .line 197
    .line 198
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_3

    .line 203
    .line 204
    move-object v2, v3

    .line 205
    :cond_3
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 210
    .line 211
    const-string/jumbo v1, "deviceClosed"

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    sget-object v0, Landroid/media/MediaMetrics$Property;->TOTAL_INPUT_BYTES:Landroid/media/MediaMetrics$Key;

    .line 219
    .line 220
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    sget-object v0, Landroid/media/MediaMetrics$Property;->TOTAL_OUTPUT_BYTES:Landroid/media/MediaMetrics$Key;

    .line 235
    .line 236
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 237
    .line 238
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-virtual {p1, v0, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 251
    .line 252
    .line 253
    :cond_4
    return-void
.end method

.method public final removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnectionsRemoved:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mTotalTimeConnectedNs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    .line 21
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {v3, v5}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/time/Duration;->toNanos()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_4

    .line 39
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnectionsAdded:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x0

    .line 46
    if-lt v2, v3, :cond_1

    .line 47
    .line 48
    iput-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 56
    .line 57
    :goto_1
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/server/midi/MidiService$Device;->logMetrics(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v2, p1, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const/4 v3, 0x1

    .line 75
    if-ne v2, v3, :cond_2

    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 87
    .line 88
    invoke-virtual {v3, p1}, Lcom/android/server/midi/MidiService;->removeUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V

    .line 89
    .line 90
    .line 91
    monitor-exit v2

    .line 92
    goto :goto_2

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :try_start_3
    throw p0

    .line 96
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    .line 114
    .line 115
    iput-object v4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 118
    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 130
    return-void

    .line 131
    :catchall_2
    move-exception p0

    .line 132
    goto :goto_5

    .line 133
    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    :try_start_6
    throw p0

    .line 135
    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 136
    throw p0
.end method

.method public final setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 4

    .line 1
    const-string v0, "MidiService.Device"

    .line 2
    .line 3
    const-string/jumbo v1, "setDeviceServer()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string p0, "MidiService.Device"

    .line 18
    .line 19
    const-string/jumbo p1, "mServer already set in setDeviceServer"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :try_start_0
    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 51
    .line 52
    invoke-interface {v2}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 64
    .line 65
    :try_start_1
    invoke-interface {v2}, Landroid/media/midi/IMidiDeviceServer;->closeDevice()V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    :catch_1
    move-object p1, v2

    .line 72
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    monitor-enter v0

    .line 77
    :try_start_2
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    monitor-exit v0

    .line 102
    goto :goto_3

    .line 103
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_4
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Device Info: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " Status: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " UID: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " DeviceConnection count: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " mServiceConnection: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method
