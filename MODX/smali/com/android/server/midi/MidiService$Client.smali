.class public final Lcom/android/server/midi/MidiService$Client;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mDeviceConnections:Ljava/util/HashMap;

.field public final mListeners:Ljava/util/HashMap;

.field public final mPid:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 20
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/android/server/midi/MidiService$Client;->mPid:I

    .line 34
    return-void
.end method


# virtual methods
.method public final addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;I)V
    .locals 5

    .line 1
    const-string v0, "MidiService.Client"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "addDeviceConnection() device:"

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " userId:"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p3

    .line 25
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p3, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 30
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    .line 33
    move-result p3

    .line 34
    const/16 v0, 0x40

    .line 36
    if-ge p3, v0, :cond_7

    .line 38
    new-instance p3, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 40
    invoke-direct {p3, p1, p0, p2}, Lcom/android/server/midi/MidiService$DeviceConnection;-><init>(Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 43
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 45
    iget-object p2, p3, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    .line 47
    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string p0, "Unable to bind service: "

    .line 52
    const-string p2, "  mServer:"

    .line 54
    const-string v0, "MidiService.Device"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    const-string v2, "addDeviceConnection() [A] connection:"

    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 75
    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceConnectionsAdded:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 81
    iget-object v1, p1, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 83
    if-nez v1, :cond_0

    .line 85
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p1, Lcom/android/server/midi/MidiService$Device;->mPreviousCounterInstant:Ljava/time/Instant;

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto/16 :goto_3

    .line 95
    :cond_0
    :goto_0
    const-string v1, "MidiService.Device"

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object p2, p1, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 104
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p2, p1, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 116
    if-eqz p2, :cond_1

    .line 118
    const-string p0, "MidiService.Device"

    .line 120
    const-string p2, "++++ A"

    .line 122
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object p0, p1, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 132
    invoke-virtual {p3, p0}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    .line 135
    goto/16 :goto_2

    .line 137
    :cond_1
    iget-object p2, p1, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 139
    const/4 v1, 0x0

    .line 140
    if-nez p2, :cond_5

    .line 142
    iget-object p2, p1, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 144
    if-nez p2, :cond_2

    .line 146
    iget-object p2, p1, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 148
    if-eqz p2, :cond_5

    .line 150
    :cond_2
    const-string p2, "MidiService.Device"

    .line 152
    const-string v2, "++++ B"

    .line 154
    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p2, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance p2, Lcom/android/server/midi/MidiService$Device$1;

    .line 164
    invoke-direct {p2, p1}, Lcom/android/server/midi/MidiService$Device$1;-><init>(Lcom/android/server/midi/MidiService$Device;)V

    .line 167
    iput-object p2, p1, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 169
    iget-object p2, p1, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 171
    if-eqz p2, :cond_3

    .line 173
    new-instance p2, Landroid/content/Intent;

    .line 175
    const-string p3, "android.media.midi.BluetoothMidiService"

    .line 177
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance p3, Landroid/content/ComponentName;

    .line 182
    const-string/jumbo v2, "com.android.bluetoothmidiservice"

    .line 185
    const-string/jumbo v3, "com.android.bluetoothmidiservice.BluetoothMidiService"

    .line 188
    invoke-direct {p3, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 194
    goto :goto_1

    .line 195
    :cond_3
    iget-object p2, p1, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 197
    iget-object p3, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 199
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    invoke-static {p3}, Lcom/android/server/midi/MidiService;->isUmpDevice(Landroid/media/midi/MidiDeviceInfo;)Z

    .line 205
    move-result p2

    .line 206
    if-nez p2, :cond_4

    .line 208
    new-instance p2, Landroid/content/Intent;

    .line 210
    const-string p3, "android.media.midi.MidiDeviceService"

    .line 212
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    new-instance p3, Landroid/content/ComponentName;

    .line 217
    iget-object v2, p1, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 219
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 221
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 223
    invoke-direct {p3, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    goto :goto_1

    .line 230
    :cond_4
    new-instance p2, Landroid/content/Intent;

    .line 232
    const-string p3, "android.media.midi.MidiUmpDeviceService"

    .line 234
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    new-instance p3, Landroid/content/ComponentName;

    .line 239
    iget-object v2, p1, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 241
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 243
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 245
    invoke-direct {p3, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 251
    :goto_1
    iget-object p3, p1, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    .line 253
    iget-object p3, p3, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 255
    iget-object v2, p1, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 257
    iget v3, p1, Lcom/android/server/midi/MidiService$Device;->mUserId:I

    .line 259
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 262
    move-result-object v3

    .line 263
    const/4 v4, 0x1

    .line 264
    invoke-virtual {p3, p2, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 267
    move-result p3

    .line 268
    if-nez p3, :cond_6

    .line 270
    const-string p3, "MidiService.Device"

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    .line 274
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object p0

    .line 284
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p1, v1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 290
    iput-object v1, p1, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 292
    goto :goto_2

    .line 293
    :cond_5
    const-string p0, "MidiService.Device"

    .line 295
    const-string p1, "No way to connect to device in addDeviceConnection"

    .line 297
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p3, v1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    .line 303
    :cond_6
    :goto_2
    monitor-exit v0

    .line 304
    return-void

    .line 305
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    throw p0

    .line 307
    :cond_7
    const-string p1, "MidiService.Client"

    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo p3, "too many MIDI connections for UID = "

    .line 314
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    iget p3, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 319
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p2

    .line 326
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance p1, Ljava/lang/SecurityException;

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    .line 333
    const-string/jumbo p3, "too many MIDI connections for UID = "

    .line 336
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    iget p0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 341
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object p0

    .line 348
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 351
    throw p1
.end method

.method public final binderDied()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Client died: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MidiService.Client"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 23
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    .line 3
    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    .line 8
    iget-object v1, v1, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 10
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 24
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 44
    iget-object v1, v0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 46
    invoke-virtual {v1, v0}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p0
.end method

.method public final deviceAdded(Lcom/android/server/midi/MidiService$Device;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "deviceAdded() "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p1, Lcom/android/server/midi/MidiService$Device;->mUserId:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " userId:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "MidiService.Client"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 47
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->isUserIdAllowed(I)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iget-object p1, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 60
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 62
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 65
    move-result-object p0

    .line 66
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p0

    .line 70
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/media/midi/IMidiDeviceListener;

    .line 82
    invoke-interface {v0, p1}, Landroid/media/midi/IMidiDeviceListener;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    const-string/jumbo p1, "remote exception"

    .line 90
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_1
    :goto_1
    return-void
.end method

.method public final deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "deviceRemoved() "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p1, Lcom/android/server/midi/MidiService$Device;->mUserId:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " userId:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "MidiService.Client"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 47
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->isUserIdAllowed(I)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iget-object p1, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 60
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 62
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 65
    move-result-object p0

    .line 66
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p0

    .line 70
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/media/midi/IMidiDeviceListener;

    .line 82
    invoke-interface {v0, p1}, Landroid/media/midi/IMidiDeviceListener;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    const-string/jumbo p1, "remote exception"

    .line 90
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_1
    :goto_1
    return-void
.end method

.method public final deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "deviceStatusChanged() "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p1, Lcom/android/server/midi/MidiService$Device;->mUserId:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " userId:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "MidiService.Client"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 47
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->isUserIdAllowed(I)Z

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 60
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object p0

    .line 68
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/media/midi/IMidiDeviceListener;

    .line 80
    invoke-interface {p1, p2}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    const-string/jumbo p1, "remote exception"

    .line 88
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_1
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Client: UID: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " PID: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/midi/MidiService$Client;->mPid:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " listener count: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " Device Connections:"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p0

    .line 52
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 64
    const-string v2, " <device "

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, v1, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 71
    iget-object v1, v1, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 73
    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ">"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method
