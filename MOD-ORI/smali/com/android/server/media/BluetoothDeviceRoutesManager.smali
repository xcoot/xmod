.class public final Lcom/android/server/media/BluetoothDeviceRoutesManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAdapterStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

.field public mAddressToBondedDevice:Ljava/util/Map;

.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

.field public final mBluetoothRoutes:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;


# direct methods
.method public static -$$Nest$mhandleBluetoothAdapterStateChange(Lcom/android/server/media/BluetoothDeviceRoutesManager;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0xc

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->updateBluetoothRoutes()V

    .line 18
    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    .line 22
    .line 23
    check-cast p1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    xor-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    .line 35
    .line 36
    invoke-interface {p0}, Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_0
    monitor-enter p0

    .line 44
    :try_start_2
    iget-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    .line 45
    .line 46
    check-cast p1, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 49
    .line 50
    .line 51
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    .line 53
    .line 54
    invoke-interface {p0}, Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_1
    return-void

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAdapterStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mDeviceStateChangedReceiver:Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 45
    .line 46
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iput-object p4, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 50
    .line 51
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iput-object p5, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;
    .locals 11

    .line 1
    new-instance v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 13
    .line 14
    const/16 v3, 0x16

    .line 15
    .line 16
    invoke-virtual {v2, p1, v3}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/16 v5, 0x15

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    const/16 v4, 0x1a

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2, p1, v5}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    const/16 v4, 0x17

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v4, 0x8

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getRouteIdForType(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    new-instance v7, Landroid/util/SparseBooleanArray;

    .line 43
    .line 44
    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v8, 0x2

    .line 48
    invoke-virtual {v2, p1, v8}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const/4 v10, 0x1

    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    invoke-virtual {v7, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {v2, p1, v5}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_3

    .line 63
    .line 64
    invoke-virtual {v7, v5, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {v2, p1, v3}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-virtual {v7, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iput-object v7, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 77
    .line 78
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    .line 79
    .line 80
    invoke-direct {v2, v6, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "android.media.route.feature.LIVE_AUDIO"

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const v2, 0x1040246

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v1, p0}, Landroid/media/MediaRoute2Info$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0, v4}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    iput-object p0, v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 138
    .line 139
    return-object v0
.end method

.method public final getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/media/flags/Flags;->enableUseOfBluetoothDeviceGetAliasForMr2infoGetName()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const p1, 0x104000e

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_1
    return-object p1
.end method

.method public final getRouteIdForType(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 4
    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x1a

    .line 8
    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "LE_AUDIO_"

    .line 19
    .line 20
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x16

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/BluetoothProfileMonitor;->getGroupId(Landroid/bluetooth/BluetoothDevice;I)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "HEARING_AID_"

    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v0, 0x15

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/BluetoothProfileMonitor;->getGroupId(Landroid/bluetooth/BluetoothDevice;I)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_0
    return-object p0
.end method

.method public final updateBluetoothRoutes()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 13
    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "MR2SystemProvider"

    .line 18
    .line 19
    const-string v1, "BluetoothAdapter.getBondedDevices returned null."

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/util/Map;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mAddressToBondedDevice:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v3, v2, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-lez v3, :cond_1

    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v3, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw v0
.end method
