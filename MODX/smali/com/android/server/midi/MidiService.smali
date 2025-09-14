.class public final Lcom/android/server/midi/MidiService;
.super Landroid/media/midi/IMidiManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final MIDI_SERVICE:Ljava/util/UUID;


# instance fields
.field public final mBleMidiDeviceMap:Ljava/util/HashMap;

.field public final mBluetoothDevices:Ljava/util/HashMap;

.field public mBluetoothServiceUid:I

.field public final mClients:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public final mDevicesByInfo:Ljava/util/HashMap;

.field public final mDevicesByServer:Ljava/util/HashMap;

.field public mNextDeviceId:I

.field public final mNonMidiUUIDs:Ljava/util/HashSet;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageMonitor:Lcom/android/server/midi/MidiService$1;

.field public final mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

.field public final mUsbMidiLock:Ljava/lang/Object;

.field public final mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$maddPackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6
    const v1, 0x40084

    .line 9
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 15
    if-nez p1, :cond_0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    .line 20
    if-ge v0, v1, :cond_1

    .line 22
    aget-object v1, p1, v0

    .line 24
    invoke-virtual {p0, v1, p2}, Lcom/android/server/midi/MidiService;->addLegacyPackageDeviceServer(Landroid/content/pm/ServiceInfo;I)V

    .line 27
    aget-object v1, p1, v0

    .line 29
    invoke-virtual {p0, v1, p2}, Lcom/android/server/midi/MidiService;->addUmpPackageDeviceServer(Landroid/content/pm/ServiceInfo;I)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v0, "handlePackageUpdate could not find package "

    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    const-string p2, "MidiService"

    .line 53
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_1
    :goto_1
    return-void
.end method

.method public static -$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v1, "dumpUuids("

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string p1, ") numParcels:"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const/4 p1, 0x0

    .line 25
    if-eqz p0, :cond_0

    .line 27
    array-length v1, p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, p1

    .line 30
    :goto_0
    const-string v2, "MidiService"

    .line 32
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 35
    if-nez p0, :cond_1

    .line 37
    const-string p0, "No UUID Parcels"

    .line 39
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    array-length v0, p0

    .line 44
    :goto_1
    if-ge p1, v0, :cond_2

    .line 46
    aget-object v1, p0, p1

    .line 48
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 51
    move-result-object v1

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    const-string v4, " uuid:"

    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_2
    return-void
.end method

.method public static -$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 7
    move-result-object p0

    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p0, :cond_1

    .line 11
    array-length v0, p0

    .line 12
    move v1, p1

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    aget-object v2, p0, v1

    .line 17
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lcom/android/server/midi/MidiService;->MIDI_SERVICE:Ljava/util/UUID;

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return p1
.end method

.method public static -$$Nest$monStartOrUnlockUser(Lcom/android/server/midi/MidiService;Lcom/android/server/SystemService$TargetUser;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "onStartOrUnlockUser "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " matchDirectBootUnaware: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "MidiService"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz p2, :cond_0

    .line 38
    const p2, 0x40080

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 p2, 0x80

    .line 44
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 46
    const-string v1, "android.media.midi.MidiDeviceService"

    .line 48
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v0, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x0

    .line 62
    if-eqz v0, :cond_2

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    move-result v2

    .line 68
    move v3, v1

    .line 69
    :goto_1
    if-ge v3, v2, :cond_2

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 77
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 79
    if-eqz v4, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 84
    move-result v5

    .line 85
    invoke-virtual {p0, v4, v5}, Lcom/android/server/midi/MidiService;->addLegacyPackageDeviceServer(Landroid/content/pm/ServiceInfo;I)V

    .line 88
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 93
    const-string v2, "android.media.midi.MidiUmpDeviceService"

    .line 95
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 100
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 103
    move-result v3

    .line 104
    invoke-virtual {v2, v0, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 107
    move-result-object p2

    .line 108
    if-eqz p2, :cond_4

    .line 110
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 113
    move-result v0

    .line 114
    move v2, v1

    .line 115
    :goto_2
    if-ge v2, v0, :cond_4

    .line 117
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 123
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 125
    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 130
    move-result v4

    .line 131
    invoke-virtual {p0, v3, v4}, Lcom/android/server/midi/MidiService;->addUmpPackageDeviceServer(Landroid/content/pm/ServiceInfo;I)V

    .line 134
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    iget-object p2, p0, Lcom/android/server/midi/MidiService;->mUserManager:Landroid/os/UserManager;

    .line 139
    invoke-virtual {p2}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 142
    move-result-object p2

    .line 143
    if-eqz p2, :cond_5

    .line 145
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 148
    move-result v0

    .line 149
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 152
    move-result p2

    .line 153
    if-ne v0, p2, :cond_6

    .line 155
    :cond_5
    :try_start_0
    iget-object p2, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 157
    const-string/jumbo v0, "com.android.bluetoothmidiservice"

    .line 160
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 163
    move-result p1

    .line 164
    invoke-virtual {p2, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 167
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_3

    .line 169
    :catch_0
    const/4 p1, 0x0

    .line 170
    :goto_3
    if-eqz p1, :cond_6

    .line 172
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 174
    if-eqz p1, :cond_6

    .line 176
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 178
    iput p1, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 180
    :cond_6
    return-void
.end method

.method public static -$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "openBluetoothDevice() device: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "MidiService"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 26
    const-class v1, Landroid/media/midi/MidiManager;

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/media/midi/MidiManager;

    .line 34
    new-instance v1, Lcom/android/server/midi/MidiService$3;

    .line 36
    invoke-direct {v1, p0, p1}, Lcom/android/server/midi/MidiService$3;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 39
    const/4 p0, 0x0

    .line 40
    invoke-virtual {v0, p1, v1, p0}, Landroid/media/midi/MidiManager;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 43
    return-void
.end method

.method public static -$$Nest$mremovePackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 26
    iget-object v3, v2, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 28
    if-nez v3, :cond_1

    .line 30
    const/4 v3, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 34
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 40
    iget v3, v2, Lcom/android/server/midi/MidiService$Device;->mUserId:I

    .line 42
    if-ne v3, p2, :cond_0

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "03B80E5A-EDE8-4B33-A751-6CE34EC4C700"

    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/midi/MidiService;->MIDI_SERVICE:Ljava/util/UUID;

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v1, v0, [Landroid/media/midi/MidiDeviceInfo;

    .line 12
    sput-object v1, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    .line 16
    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/media/midi/IMidiManager$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 42
    new-instance v1, Ljava/lang/Object;

    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    .line 51
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 56
    new-instance v1, Ljava/util/HashSet;

    .line 58
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    .line 63
    new-instance v1, Ljava/util/HashSet;

    .line 65
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 68
    iput-object v1, p0, Lcom/android/server/midi/MidiService;->mNonMidiUUIDs:Ljava/util/HashSet;

    .line 70
    new-instance v2, Lcom/android/server/midi/MidiService$1;

    .line 72
    invoke-direct {v2, p0}, Lcom/android/server/midi/MidiService$1;-><init>(Lcom/android/server/midi/MidiService;)V

    .line 75
    new-instance v3, Lcom/android/server/midi/MidiService$2;

    .line 77
    invoke-direct {v3, p0}, Lcom/android/server/midi/MidiService$2;-><init>(Lcom/android/server/midi/MidiService;)V

    .line 80
    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 85
    move-result-object v3

    .line 86
    iput-object v3, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 88
    const-class v3, Landroid/os/UserManager;

    .line 90
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Landroid/os/UserManager;

    .line 96
    iput-object v3, p0, Lcom/android/server/midi/MidiService;->mUserManager:Landroid/os/UserManager;

    .line 98
    const/4 v3, 0x0

    .line 99
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 101
    invoke-virtual {v2, p1, v3, v4, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 104
    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 107
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    .line 109
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    .line 114
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    .line 119
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->AVRCP_CONTROLLER:Landroid/os/ParcelUuid;

    .line 124
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    .line 129
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 134
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    .line 139
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->LE_AUDIO:Landroid/os/ParcelUuid;

    .line 144
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    .line 149
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    .line 154
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public static isUmpDevice(Landroid/media/midi/MidiDeviceInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method


# virtual methods
.method public final addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZIII)Landroid/media/midi/MidiDeviceInfo;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v11, p1

    .line 5
    move-object/from16 v12, p7

    .line 7
    move/from16 v13, p10

    .line 9
    const-string v1, "MidiService"

    .line 11
    const-string v2, "addDeviceLocked() "

    .line 13
    const-string v3, " type:"

    .line 15
    const-string v4, " userId:"

    .line 17
    invoke-static {v13, v11, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v2

    .line 21
    move/from16 v14, p12

    .line 23
    invoke-static {v2, v14, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 28
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/android/server/midi/MidiService$Device;

    .line 49
    iget v3, v3, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 51
    if-ne v3, v13, :cond_0

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 v1, 0x10

    .line 58
    if-ge v2, v1, :cond_8

    .line 60
    iget v3, v0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 62
    add-int/lit8 v1, v3, 0x1

    .line 64
    iput v1, v0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 66
    new-instance v15, Landroid/media/midi/MidiDeviceInfo;

    .line 68
    move-object v1, v15

    .line 69
    move/from16 v2, p1

    .line 71
    move/from16 v4, p2

    .line 73
    move/from16 v5, p3

    .line 75
    move-object/from16 v6, p4

    .line 77
    move-object/from16 v7, p5

    .line 79
    move-object/from16 v8, p6

    .line 81
    move/from16 v9, p9

    .line 83
    move/from16 v10, p11

    .line 85
    invoke-direct/range {v1 .. v10}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 88
    const/4 v1, 0x0

    .line 89
    if-eqz v12, :cond_2

    .line 91
    :try_start_0
    invoke-interface {v12, v15}, Landroid/media/midi/IMidiDeviceServer;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 95
    :catch_0
    const-string v0, "MidiService"

    .line 97
    const-string v2, "RemoteException in setDeviceInfo()"

    .line 99
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v1

    .line 103
    :cond_2
    :goto_1
    const/4 v2, 0x3

    .line 104
    if-ne v11, v2, :cond_4

    .line 106
    const-string/jumbo v1, "bluetooth_device"

    .line 109
    const-class v2, Landroid/bluetooth/BluetoothDevice;

    .line 111
    move-object/from16 v3, p6

    .line 113
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 119
    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 121
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 127
    if-eqz v2, :cond_3

    .line 129
    iput-object v15, v2, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 131
    :cond_3
    move-object v8, v1

    .line 132
    move-object v1, v2

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    move-object v8, v1

    .line 135
    :goto_2
    if-nez v1, :cond_5

    .line 137
    new-instance v9, Lcom/android/server/midi/MidiService$Device;

    .line 139
    move-object v1, v9

    .line 140
    move-object/from16 v2, p0

    .line 142
    move-object/from16 v3, p7

    .line 144
    move-object v4, v15

    .line 145
    move-object/from16 v5, p8

    .line 147
    move/from16 v6, p10

    .line 149
    move/from16 v7, p12

    .line 151
    invoke-direct/range {v1 .. v7}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;II)V

    .line 154
    :cond_5
    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 156
    invoke-virtual {v2, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    if-eqz v8, :cond_6

    .line 161
    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 163
    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_6
    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 168
    monitor-enter v2

    .line 169
    :try_start_1
    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 171
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 178
    move-result-object v0

    .line 179
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_7

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Lcom/android/server/midi/MidiService$Client;

    .line 191
    invoke-virtual {v3, v1}, Lcom/android/server/midi/MidiService$Client;->deviceAdded(Lcom/android/server/midi/MidiService$Device;)V

    .line 194
    goto :goto_3

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    goto :goto_4

    .line 197
    :cond_7
    monitor-exit v2

    .line 198
    return-object v15

    .line 199
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    throw v0

    .line 201
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    .line 203
    const-string/jumbo v1, "too many MIDI devices already created for UID = "

    .line 206
    invoke-static {v13, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 209
    move-result-object v1

    .line 210
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 213
    throw v0
.end method

.method public final addLegacyPackageDeviceServer(Landroid/content/pm/ServiceInfo;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v14, p1

    .line 5
    const/4 v15, 0x0

    .line 6
    if-nez v14, :cond_0

    .line 8
    :try_start_0
    const-string v0, "MidiService"

    .line 10
    const-string v1, "Skipping null service info"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto/16 :goto_e

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto/16 :goto_c

    .line 22
    :cond_0
    const-string v1, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    .line 24
    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 35
    const-string v2, "android.media.midi.MidiDeviceService"

    .line 37
    invoke-virtual {v14, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 40
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v13, :cond_3

    .line 43
    :try_start_1
    const-string v0, "MidiService"

    .line 45
    const-string/jumbo v1, "loading xml metadata failed"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    if-eqz v13, :cond_2

    .line 53
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 56
    :cond_2
    return-void

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    move-object v15, v13

    .line 59
    goto/16 :goto_e

    .line 61
    :catch_1
    move-exception v0

    .line 62
    move-object v15, v13

    .line 63
    goto/16 :goto_c

    .line 65
    :cond_3
    :try_start_2
    new-instance v12, Ljava/util/ArrayList;

    .line 67
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v11, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 75
    const/4 v10, 0x0

    .line 76
    move/from16 v16, v10

    .line 78
    move/from16 v17, v16

    .line 80
    move/from16 v18, v17

    .line 82
    move-object v7, v15

    .line 83
    :goto_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    .line 86
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 87
    const/4 v2, 0x1

    .line 88
    if-ne v1, v2, :cond_4

    .line 90
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 93
    goto/16 :goto_d

    .line 95
    :cond_4
    const/4 v2, 0x2

    .line 96
    if-ne v1, v2, :cond_11

    .line 98
    :try_start_3
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    const-string/jumbo v2, "device"

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_9

    .line 111
    if-eqz v7, :cond_6

    .line 113
    const-string v1, "MidiService"

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string/jumbo v3, "nested <device> elements in metadata for "

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_5
    :goto_1
    move/from16 v20, v10

    .line 140
    move-object/from16 v23, v11

    .line 142
    move-object/from16 v19, v12

    .line 144
    move-object/from16 v21, v13

    .line 146
    goto/16 :goto_b

    .line 148
    :cond_6
    new-instance v7, Landroid/os/Bundle;

    .line 150
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string/jumbo v1, "service_info"

    .line 156
    invoke-virtual {v7, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    .line 162
    move-result v1

    .line 163
    move v2, v10

    .line 164
    move/from16 v18, v2

    .line 166
    :goto_2
    if-ge v2, v1, :cond_8

    .line 168
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    .line 171
    move-result-object v3

    .line 172
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    const-string/jumbo v5, "private"

    .line 179
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_7

    .line 185
    const-string/jumbo v3, "true"

    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v18

    .line 192
    goto :goto_3

    .line 193
    :cond_7
    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 198
    goto :goto_2

    .line 199
    :cond_8
    move/from16 v16, v10

    .line 201
    move/from16 v17, v16

    .line 203
    goto :goto_1

    .line 204
    :cond_9
    const-string/jumbo v2, "input-port"

    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_d

    .line 213
    if-nez v7, :cond_a

    .line 215
    const-string v1, "MidiService"

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const-string v3, "<input-port> outside of <device> in metadata for "

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v2

    .line 236
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    goto :goto_1

    .line 240
    :cond_a
    add-int/lit8 v16, v16, 0x1

    .line 242
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    .line 245
    move-result v1

    .line 246
    move v2, v10

    .line 247
    :goto_4
    if-ge v2, v1, :cond_c

    .line 249
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    .line 252
    move-result-object v3

    .line 253
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    .line 256
    move-result-object v4

    .line 257
    const-string/jumbo v5, "name"

    .line 260
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_b

    .line 266
    goto :goto_5

    .line 267
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 269
    goto :goto_4

    .line 270
    :cond_c
    move-object v4, v15

    .line 271
    :goto_5
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    goto/16 :goto_1

    .line 276
    :cond_d
    const-string/jumbo v2, "output-port"

    .line 279
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_5

    .line 285
    if-nez v7, :cond_e

    .line 287
    const-string v1, "MidiService"

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    const-string v3, "<output-port> outside of <device> in metadata for "

    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v2

    .line 308
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    goto/16 :goto_1

    .line 313
    :cond_e
    add-int/lit8 v17, v17, 0x1

    .line 315
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    .line 318
    move-result v1

    .line 319
    move v2, v10

    .line 320
    :goto_6
    if-ge v2, v1, :cond_10

    .line 322
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    .line 325
    move-result-object v3

    .line 326
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    .line 329
    move-result-object v4

    .line 330
    const-string/jumbo v5, "name"

    .line 333
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_f

    .line 339
    goto :goto_7

    .line 340
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 342
    goto :goto_6

    .line 343
    :cond_10
    move-object v4, v15

    .line 344
    :goto_7
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    goto/16 :goto_1

    .line 349
    :cond_11
    const/4 v2, 0x3

    .line 350
    if-ne v1, v2, :cond_5

    .line 352
    :try_start_4
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 355
    move-result-object v1

    .line 356
    const-string/jumbo v2, "device"

    .line 359
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 363
    if-eqz v1, :cond_5

    .line 365
    if-eqz v7, :cond_5

    .line 367
    if-nez v16, :cond_12

    .line 369
    if-nez v17, :cond_12

    .line 371
    :try_start_5
    const-string v1, "MidiService"

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    const-string v3, "<device> with no ports in metadata for "

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    move-result-object v2

    .line 392
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 395
    goto/16 :goto_1

    .line 397
    :cond_12
    :try_start_6
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 399
    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 401
    move/from16 v9, p2

    .line 403
    invoke-virtual {v1, v2, v10, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 406
    move-result-object v1

    .line 407
    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 409
    :try_start_7
    iget-object v6, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 411
    monitor-enter v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 412
    :try_start_8
    sget-object v1, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 414
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 417
    move-result-object v2

    .line 418
    move-object v5, v2

    .line 419
    check-cast v5, [Ljava/lang/String;

    .line 421
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 424
    move-result-object v1

    .line 425
    move-object/from16 v19, v1

    .line 427
    check-cast v19, [Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 429
    const/16 v20, 0x0

    .line 431
    const/16 v21, -0x1

    .line 433
    const/4 v2, 0x2

    .line 434
    move-object/from16 v1, p0

    .line 436
    move/from16 v3, v16

    .line 438
    move/from16 v4, v17

    .line 440
    move-object/from16 v22, v6

    .line 442
    move-object/from16 v6, v19

    .line 444
    move/from16 v19, v8

    .line 446
    move-object/from16 v8, v20

    .line 448
    move-object/from16 v9, p1

    .line 450
    move/from16 v20, v10

    .line 452
    move/from16 v10, v18

    .line 454
    move-object/from16 v23, v11

    .line 456
    move/from16 v11, v19

    .line 458
    move-object/from16 v19, v12

    .line 460
    move/from16 v12, v21

    .line 462
    move-object/from16 v21, v13

    .line 464
    move/from16 v13, p2

    .line 466
    :try_start_9
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZIII)Landroid/media/midi/MidiDeviceInfo;

    .line 469
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 470
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 473
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 476
    move-object v7, v15

    .line 477
    goto :goto_b

    .line 478
    :catchall_2
    move-exception v0

    .line 479
    :goto_8
    move-object/from16 v15, v21

    .line 481
    goto :goto_e

    .line 482
    :catch_2
    move-exception v0

    .line 483
    :goto_9
    move-object/from16 v15, v21

    .line 485
    goto :goto_c

    .line 486
    :catchall_3
    move-exception v0

    .line 487
    goto :goto_a

    .line 488
    :catchall_4
    move-exception v0

    .line 489
    move-object/from16 v22, v6

    .line 491
    move-object/from16 v21, v13

    .line 493
    :goto_a
    :try_start_b
    monitor-exit v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 494
    :try_start_c
    throw v0

    .line 495
    :catchall_5
    move-exception v0

    .line 496
    move-object/from16 v21, v13

    .line 498
    goto :goto_8

    .line 499
    :catch_3
    move-exception v0

    .line 500
    move-object/from16 v21, v13

    .line 502
    goto :goto_9

    .line 503
    :catch_4
    move/from16 v20, v10

    .line 505
    move-object/from16 v23, v11

    .line 507
    move-object/from16 v19, v12

    .line 509
    move-object/from16 v21, v13

    .line 511
    const-string v1, "MidiService"

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    .line 515
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    const-string/jumbo v3, "could not fetch ApplicationInfo for "

    .line 521
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 526
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    move-result-object v2

    .line 533
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 536
    :goto_b
    move-object/from16 v12, v19

    .line 538
    move/from16 v10, v20

    .line 540
    move-object/from16 v13, v21

    .line 542
    move-object/from16 v11, v23

    .line 544
    goto/16 :goto_0

    .line 546
    :goto_c
    :try_start_d
    const-string v1, "MidiService"

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    .line 550
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    const-string v3, "Unable to load component info "

    .line 555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    move-result-object v2

    .line 569
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 572
    if-eqz v15, :cond_13

    .line 574
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 577
    :cond_13
    :goto_d
    return-void

    .line 578
    :goto_e
    if-eqz v15, :cond_14

    .line 580
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 583
    :cond_14
    throw v0
.end method

.method public final addUmpPackageDeviceServer(Landroid/content/pm/ServiceInfo;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v14, p1

    .line 5
    const-string v1, "Getting XML failed "

    .line 7
    const-string v2, "Getting resource failed "

    .line 9
    const-string v3, "Skipping MIDI device service "

    .line 11
    const/4 v15, 0x0

    .line 12
    if-nez v14, :cond_0

    .line 14
    :try_start_0
    const-string v0, "MidiService"

    .line 16
    const-string v1, "Skipping null service info"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto/16 :goto_d

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto/16 :goto_b

    .line 28
    :cond_0
    const-string v4, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    .line 30
    iget-object v5, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 38
    return-void

    .line 39
    :cond_1
    invoke-static {}, Landroid/media/midi/Flags;->virtualUmp()Z

    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_2

    .line 45
    const-string v0, "MidiService"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, ": virtual UMP flag not enabled"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 70
    :cond_2
    new-instance v3, Landroid/content/ComponentName;

    .line 72
    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 74
    iget-object v5, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 76
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v4, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    const-string v5, "android.media.midi.MidiUmpDeviceService"

    .line 83
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/pm/PackageManager$Property;

    .line 86
    move-result-object v3

    .line 87
    if-nez v3, :cond_3

    .line 89
    const-string v0, "MidiService"

    .line 91
    const-string v1, "Getting MidiUmpDeviceService property failed"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 97
    :cond_3
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$Property;->getResourceId()I

    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_4

    .line 103
    const-string v0, "MidiService"

    .line 105
    const-string v1, "Getting MidiUmpDeviceService resourceId failed"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 111
    :cond_4
    iget-object v4, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 113
    iget-object v5, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 115
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 118
    move-result-object v4

    .line 119
    if-nez v4, :cond_5

    .line 121
    const-string v0, "MidiService"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 141
    :cond_5
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 144
    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-nez v13, :cond_7

    .line 147
    :try_start_1
    const-string v0, "MidiService"

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    if-eqz v13, :cond_6

    .line 166
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 169
    :cond_6
    return-void

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    move-object v15, v13

    .line 172
    goto/16 :goto_d

    .line 174
    :catch_1
    move-exception v0

    .line 175
    move-object v15, v13

    .line 176
    goto/16 :goto_b

    .line 178
    :catch_2
    move-object v15, v13

    .line 179
    goto/16 :goto_e

    .line 181
    :cond_7
    :try_start_2
    new-instance v12, Ljava/util/ArrayList;

    .line 183
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 186
    const/4 v11, 0x0

    .line 187
    move/from16 v16, v11

    .line 189
    move/from16 v17, v16

    .line 191
    move-object v7, v15

    .line 192
    :goto_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    .line 195
    move-result v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 196
    const/4 v2, 0x1

    .line 197
    if-ne v1, v2, :cond_8

    .line 199
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 202
    goto/16 :goto_f

    .line 204
    :cond_8
    const/4 v2, 0x2

    .line 205
    if-ne v1, v2, :cond_11

    .line 207
    :try_start_3
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 211
    const-string/jumbo v2, "device"

    .line 214
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_d

    .line 220
    if-eqz v7, :cond_a

    .line 222
    const-string v1, "MidiService"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    const-string/jumbo v3, "nested <device> elements in metadata for "

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v2

    .line 244
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_9
    :goto_1
    move/from16 v21, v11

    .line 249
    move-object/from16 v18, v12

    .line 251
    move-object/from16 v19, v13

    .line 253
    goto/16 :goto_a

    .line 255
    :cond_a
    new-instance v7, Landroid/os/Bundle;

    .line 257
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 260
    const-string/jumbo v1, "service_info"

    .line 263
    invoke-virtual {v7, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    .line 269
    move-result v1

    .line 270
    move v2, v11

    .line 271
    move/from16 v17, v2

    .line 273
    :goto_2
    if-ge v2, v1, :cond_c

    .line 275
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    .line 278
    move-result-object v3

    .line 279
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    .line 282
    move-result-object v4

    .line 283
    const-string/jumbo v5, "private"

    .line 286
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_b

    .line 292
    const-string/jumbo v3, "true"

    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    move-result v17

    .line 299
    goto :goto_3

    .line 300
    :cond_b
    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 305
    goto :goto_2

    .line 306
    :cond_c
    move/from16 v16, v11

    .line 308
    goto :goto_1

    .line 309
    :cond_d
    const-string/jumbo v2, "port"

    .line 312
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_9

    .line 318
    if-nez v7, :cond_e

    .line 320
    const-string v1, "MidiService"

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 324
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    const-string v3, "<port> outside of <device> in metadata for "

    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 334
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object v2

    .line 341
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    goto :goto_1

    .line 345
    :cond_e
    add-int/lit8 v16, v16, 0x1

    .line 347
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    .line 350
    move-result v1

    .line 351
    move v2, v11

    .line 352
    :goto_4
    if-ge v2, v1, :cond_10

    .line 354
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    .line 357
    move-result-object v3

    .line 358
    invoke-interface {v13, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    .line 361
    move-result-object v4

    .line 362
    const-string/jumbo v5, "name"

    .line 365
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_f

    .line 371
    goto :goto_5

    .line 372
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 374
    goto :goto_4

    .line 375
    :cond_10
    move-object v4, v15

    .line 376
    :goto_5
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 379
    goto/16 :goto_1

    .line 381
    :cond_11
    const/4 v2, 0x3

    .line 382
    if-ne v1, v2, :cond_9

    .line 384
    :try_start_4
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 387
    move-result-object v1

    .line 388
    const-string/jumbo v2, "device"

    .line 391
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    move-result v1
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 395
    if-eqz v1, :cond_9

    .line 397
    if-eqz v7, :cond_9

    .line 399
    if-nez v16, :cond_12

    .line 401
    :try_start_5
    const-string v1, "MidiService"

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    .line 405
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    const-string v3, "<device> with no ports in metadata for "

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    move-result-object v2

    .line 422
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 425
    goto/16 :goto_1

    .line 427
    :cond_12
    :try_start_6
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 429
    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 431
    move/from16 v10, p2

    .line 433
    invoke-virtual {v1, v2, v11, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 436
    move-result-object v1

    .line 437
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 439
    :try_start_7
    iget-object v8, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 441
    monitor-enter v8
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 442
    :try_start_8
    sget-object v1, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 444
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 447
    move-result-object v2

    .line 448
    move-object v5, v2

    .line 449
    check-cast v5, [Ljava/lang/String;

    .line 451
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 454
    move-result-object v1

    .line 455
    move-object v6, v1

    .line 456
    check-cast v6, [Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 458
    const/16 v18, 0x0

    .line 460
    const/16 v19, 0x11

    .line 462
    const/4 v2, 0x2

    .line 463
    move-object/from16 v1, p0

    .line 465
    move/from16 v3, v16

    .line 467
    move/from16 v4, v16

    .line 469
    move-object/from16 v20, v8

    .line 471
    move-object/from16 v8, v18

    .line 473
    move/from16 v18, v9

    .line 475
    move-object/from16 v9, p1

    .line 477
    move/from16 v10, v17

    .line 479
    move/from16 v21, v11

    .line 481
    move/from16 v11, v18

    .line 483
    move-object/from16 v18, v12

    .line 485
    move/from16 v12, v19

    .line 487
    move-object/from16 v19, v13

    .line 489
    move/from16 v13, p2

    .line 491
    :try_start_9
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZIII)Landroid/media/midi/MidiDeviceInfo;

    .line 494
    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 495
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 498
    move-object v7, v15

    .line 499
    goto :goto_a

    .line 500
    :catchall_2
    move-exception v0

    .line 501
    :goto_6
    move-object/from16 v15, v19

    .line 503
    goto/16 :goto_d

    .line 505
    :catch_3
    move-exception v0

    .line 506
    :goto_7
    move-object/from16 v15, v19

    .line 508
    goto :goto_b

    .line 509
    :catch_4
    :goto_8
    move-object/from16 v15, v19

    .line 511
    goto :goto_e

    .line 512
    :catchall_3
    move-exception v0

    .line 513
    goto :goto_9

    .line 514
    :catchall_4
    move-exception v0

    .line 515
    move-object/from16 v20, v8

    .line 517
    move-object/from16 v19, v13

    .line 519
    :goto_9
    :try_start_b
    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 520
    :try_start_c
    throw v0

    .line 521
    :catchall_5
    move-exception v0

    .line 522
    move-object/from16 v19, v13

    .line 524
    goto :goto_6

    .line 525
    :catch_5
    move-exception v0

    .line 526
    move-object/from16 v19, v13

    .line 528
    goto :goto_7

    .line 529
    :catch_6
    move-object/from16 v19, v13

    .line 531
    goto :goto_8

    .line 532
    :catch_7
    move/from16 v21, v11

    .line 534
    move-object/from16 v18, v12

    .line 536
    move-object/from16 v19, v13

    .line 538
    const-string v1, "MidiService"

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    .line 542
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    const-string/jumbo v3, "could not fetch ApplicationInfo for "

    .line 548
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 553
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    move-result-object v2

    .line 560
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 563
    :goto_a
    move-object/from16 v12, v18

    .line 565
    move-object/from16 v13, v19

    .line 567
    move/from16 v11, v21

    .line 569
    goto/16 :goto_0

    .line 571
    :goto_b
    :try_start_d
    const-string v1, "MidiService"

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    .line 575
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    const-string v3, "Unable to load component info "

    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    .line 586
    move-result-object v3

    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    move-result-object v2

    .line 594
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 597
    if-eqz v15, :cond_14

    .line 599
    :goto_c
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 602
    goto :goto_f

    .line 603
    :goto_d
    if-eqz v15, :cond_13

    .line 605
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 608
    :cond_13
    throw v0

    .line 609
    :catch_8
    :goto_e
    if-eqz v15, :cond_14

    .line 611
    goto :goto_c

    .line 612
    :cond_14
    :goto_f
    return-void
.end method

.method public final addUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "name"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x8

    .line 18
    if-ge v0, v1, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    invoke-static {v1, v0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    move-result v3

    .line 30
    sub-int/2addr v3, v1

    .line 31
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    const-string v3, "Adding "

    .line 39
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, " "

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    const-string v3, "MidiService"

    .line 59
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "MIDI 2.0"

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 70
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    .line 72
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v1, "MIDI 1.0"

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/lang/Integer;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 99
    move-result p1

    .line 100
    add-int/lit8 p1, p1, 0x1

    .line 102
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_2
    :goto_0
    return-void
.end method

.method public final closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 10
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 16
    if-eqz p1, :cond_1

    .line 18
    iget-object p2, p1, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 25
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 33
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 42
    :cond_2
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "MidiService"

    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 14
    const-string p3, "  "

    .line 16
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 19
    const-string p2, "MIDI Manager State:"

    .line 21
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 27
    const-string p2, "Devices:"

    .line 29
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 35
    iget-object p2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 37
    monitor-enter p2

    .line 38
    :try_start_0
    iget-object p3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 40
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 43
    move-result-object p3

    .line 44
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p3

    .line 48
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 54
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 74
    const-string p2, "Clients:"

    .line 76
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 82
    iget-object p3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 84
    monitor-enter p3

    .line 85
    :try_start_1
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 87
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object p0

    .line 95
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_2

    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Lcom/android/server/midi/MidiService$Client;

    .line 107
    invoke-virtual {p2}, Lcom/android/server/midi/MidiService$Client;->toString()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 114
    goto :goto_1

    .line 115
    :catchall_1
    move-exception p0

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 121
    return-void

    .line 122
    :goto_2
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    throw p0

    .line 124
    :goto_3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    throw p0
.end method

.method public final getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/midi/MidiService$Client;

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/android/server/midi/MidiService$Client;

    .line 16
    invoke-direct {v1, p0, p1}, Lcom/android/server/midi/MidiService$Client;-><init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 25
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    monitor-exit v0

    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    return-object v1

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw p0
.end method

.method public final getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/midi/MidiService$Device;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v0, "getDeviceStatus() invalid UID = "

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    const-string v0, "MidiService"

    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p0

    .line 48
    const-string/jumbo p1, "getDeviceStatus: invalid uid"

    .line 51
    const-string v0, "203549963"

    .line 53
    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    const p1, 0x534e4554

    .line 60
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 63
    const/4 p0, 0x0

    .line 64
    return-object p0

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v1, "no such device for "

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0
.end method

.method public final getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService;->getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    move-result v2

    .line 14
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 20
    monitor-enter v3

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 23
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/server/midi/MidiService$Device;

    .line 43
    invoke-virtual {v4, v1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 49
    invoke-virtual {v4, v2}, Lcom/android/server/midi/MidiService$Device;->isUserIdAllowed(I)Z

    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_0

    .line 55
    const/4 v5, 0x2

    .line 56
    if-ne p1, v5, :cond_1

    .line 58
    iget-object v5, v4, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 60
    invoke-static {v5}, Lcom/android/server/midi/MidiService;->isUmpDevice(Landroid/media/midi/MidiDeviceInfo;)Z

    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 66
    iget-object v4, v4, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/4 v5, 0x1

    .line 75
    if-ne p1, v5, :cond_0

    .line 77
    iget-object v5, v4, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 79
    invoke-static {v5}, Lcom/android/server/midi/MidiService;->isUmpDevice(Landroid/media/midi/MidiDeviceInfo;)Z

    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_0

    .line 85
    iget-object v4, v4, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 87
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-object p0, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    move-result-object p0

    .line 98
    check-cast p0, [Landroid/media/midi/MidiDeviceInfo;

    .line 100
    return-object p0

    .line 101
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    throw p0
.end method

.method public final getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 10
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 31
    iget-object v4, v2, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 33
    if-eqz v4, :cond_0

    .line 35
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 43
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 45
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {v2, v0}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_1

    .line 57
    iget-object p0, v2, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 59
    monitor-exit v1

    .line 60
    return-object p0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string p0, "185796676"

    .line 65
    const/4 p1, -0x1

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 70
    const-string p2, ""

    .line 72
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 76
    const p1, 0x534e4554

    .line 79
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 82
    monitor-exit v1

    .line 83
    return-object v3

    .line 84
    :cond_2
    monitor-exit v1

    .line 85
    return-object v3

    .line 86
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method public final isUsbMidiDeviceInUseLocked(Landroid/media/midi/MidiDeviceInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "name"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x8

    .line 18
    const/4 v2, 0x0

    .line 19
    if-ge v0, v1, :cond_0

    .line 21
    return v2

    .line 22
    :cond_0
    invoke-static {v1, v2, p1}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    move-result v3

    .line 30
    sub-int/2addr v3, v1

    .line 31
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    const-string v3, "Checking "

    .line 39
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, " "

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    const-string v3, "MidiService"

    .line 59
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_2

    .line 70
    const-string v1, "MIDI 2.0"

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 78
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 80
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    return v2

    .line 88
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 89
    return p0
.end method

.method public final openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 5

    .line 1
    const-string v0, "addDeviceConnection() [C] device:"

    .line 3
    const-string v1, "MidiService"

    .line 5
    const-string/jumbo v2, "openBluetoothDevice()"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    const-string v1, "MidiService"

    .line 20
    const-string v2, "alloc device..."

    .line 22
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 36
    if-nez v2, :cond_1

    .line 38
    new-instance v2, Lcom/android/server/midi/MidiService$Device;

    .line 40
    invoke-direct {v2, p0, p2}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 43
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 45
    invoke-virtual {p0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const-string p0, "MidiService"

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, "device: "

    .line 59
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 75
    move-result-wide v3

    .line 76
    :try_start_1
    const-string p0, "MidiService"

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 96
    move-result p0

    .line 97
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 100
    move-result p0

    .line 101
    invoke-virtual {p1, v2, p3, p0}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    return-void

    .line 108
    :catchall_1
    move-exception p0

    .line 109
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    throw p0

    .line 113
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    throw p0
.end method

.method public final openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 8

    .line 1
    const-string v0, "addDeviceConnection() [B] device:"

    .line 3
    const-string/jumbo v1, "device already in use: "

    .line 6
    const-string/jumbo v2, "device does not exist: "

    .line 9
    const-string v3, "  device:"

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    .line 14
    move-result-object p1

    .line 15
    const-string v4, "MidiService"

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v6, "openDevice() client:"

    .line 22
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 32
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-nez p1, :cond_0

    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 40
    monitor-enter v4

    .line 41
    :try_start_0
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 43
    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lcom/android/server/midi/MidiService$Device;

    .line 49
    const-string v6, "MidiService"

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v5, :cond_5

    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 71
    move-result v2

    .line 72
    invoke-virtual {v5, v2}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 81
    move-result v2

    .line 82
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 85
    move-result v2

    .line 86
    invoke-virtual {v5, v2}, Lcom/android/server/midi/MidiService$Device;->isUserIdAllowed(I)Z

    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 92
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 93
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    .line 96
    move-result v2

    .line 97
    const/4 v3, 0x1

    .line 98
    if-ne v2, v3, :cond_2

    .line 100
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    .line 102
    monitor-enter v2

    .line 103
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/midi/MidiService;->isUsbMidiDeviceInUseLocked(Landroid/media/midi/MidiDeviceInfo;)Z

    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_1

    .line 109
    invoke-virtual {p0, p2}, Lcom/android/server/midi/MidiService;->addUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V

    .line 112
    monitor-exit v2

    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0

    .line 134
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    throw p0

    .line 136
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 139
    move-result-wide v1

    .line 140
    :try_start_2
    const-string p0, "MidiService"

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p2

    .line 154
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 160
    move-result p0

    .line 161
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 164
    move-result p0

    .line 165
    invoke-virtual {p1, v5, p3, p0}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    return-void

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    throw p0

    .line 177
    :catchall_2
    move-exception p0

    .line 178
    goto :goto_2

    .line 179
    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 181
    const-string p1, "Attempt to open virtual device with wrong user id"

    .line 183
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 186
    throw p0

    .line 187
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 189
    const-string p1, "Attempt to open private device with wrong UID"

    .line 191
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 194
    throw p0

    .line 195
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    throw p0

    .line 213
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 214
    throw p0
.end method

.method public final registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;II)Landroid/media/midi/MidiDeviceInfo;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v2, p7

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result v11

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result v13

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v2, v1, :cond_1

    .line 19
    const/16 v1, 0x3e8

    .line 21
    if-ne v11, v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 26
    const-string/jumbo v1, "only system can create USB devices"

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    const/4 v1, 0x3

    .line 34
    if-ne v2, v1, :cond_3

    .line 36
    iget v1, v0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 38
    if-ne v11, v1, :cond_2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 43
    const-string/jumbo v1, "only MidiBluetoothService can create Bluetooth devices"

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0

    .line 50
    :cond_3
    :goto_1
    iget-object v14, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 52
    monitor-enter v14

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    move-object v1, p0

    .line 56
    move/from16 v2, p7

    .line 58
    move/from16 v3, p2

    .line 60
    move/from16 v4, p3

    .line 62
    move-object/from16 v5, p4

    .line 64
    move-object/from16 v6, p5

    .line 66
    move-object/from16 v7, p6

    .line 68
    move-object/from16 v8, p1

    .line 70
    move/from16 v12, p8

    .line 72
    :try_start_0
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZIII)Landroid/media/midi/MidiDeviceInfo;

    .line 75
    move-result-object v0

    .line 76
    monitor-exit v14

    .line 77
    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw v0
.end method

.method public final registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x10

    .line 16
    if-ge v0, v1, :cond_3

    .line 18
    iget-object v0, p1, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 20
    invoke-interface {p2}, Landroid/media/midi/IMidiDeviceListener;->asBinder()Landroid/os/IBinder;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget p1, p1, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 29
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 38
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object p0

    .line 46
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 58
    invoke-virtual {v2, p1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v2, v0}, Lcom/android/server/midi/MidiService$Device;->isUserIdAllowed(I)Z

    .line 67
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v3, :cond_1

    .line 70
    :try_start_1
    iget-object v2, v2, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 72
    if-eqz v2, :cond_1

    .line 74
    invoke-interface {p2, v2}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v2

    .line 81
    :try_start_2
    const-string v3, "MidiService"

    .line 83
    const-string/jumbo v4, "remote exception"

    .line 86
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    monitor-exit v1

    .line 91
    return-void

    .line 92
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw p0

    .line 94
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v0, "too many MIDI listeners for UID = "

    .line 101
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget p1, p1, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p0
.end method

.method public final removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 7
    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 16
    iget-object v1, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 26
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/server/midi/MidiService$Client;

    .line 46
    invoke-virtual {v1, p1}, Lcom/android/server/midi/MidiService$Client;->deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final removeUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "name"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x8

    .line 18
    if-ge v0, v1, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    invoke-static {v1, v0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    move-result v2

    .line 30
    sub-int/2addr v2, v1

    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    const-string v2, "Removing "

    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, " "

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    const-string v2, "MidiService"

    .line 59
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "MIDI 2.0"

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 70
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    .line 72
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v1, "MIDI 1.0"

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_3

    .line 92
    iget-object p1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 94
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/Integer;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 103
    move-result p1

    .line 104
    const/4 v1, 0x1

    .line 105
    if-le p1, v1, :cond_2

    .line 107
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 109
    sub-int/2addr p1, v1

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 120
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_3
    :goto_0
    return-void
.end method

.method public final setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 3
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/midi/MidiService$Device;

    .line 13
    if-eqz p1, :cond_2

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    move-result v0

    .line 19
    iget v1, p1, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 21
    if-ne v0, v1, :cond_1

    .line 23
    iput-object p2, p1, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 25
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 30
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/server/midi/MidiService$Client;

    .line 50
    invoke-virtual {v1, p1, p2}, Lcom/android/server/midi/MidiService$Client;->deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    monitor-exit v0

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v0, "setDeviceStatus() caller UID "

    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 73
    move-result v0

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v0, " does not match device\'s UID "

    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget p1, p1, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p0

    .line 95
    :cond_2
    :goto_2
    return-void
.end method

.method public final unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 6
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/midi/MidiService$Device;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 10
    invoke-interface {p2}, Landroid/media/midi/IMidiDeviceListener;->asBinder()Landroid/os/IBinder;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/HashMap;

    .line 19
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 27
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 36
    :cond_1
    return-void
.end method

.method public final updateTotalBytes(Landroid/media/midi/IMidiDeviceServer;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 6
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/midi/MidiService$Device;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 23
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 28
    :cond_0
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
