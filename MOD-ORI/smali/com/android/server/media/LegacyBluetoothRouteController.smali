.class public final Lcom/android/server/media/LegacyBluetoothRouteController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteController;


# instance fields
.field public mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

.field public final mActiveRoutes:Ljava/util/List;

.field public final mAdapterStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mBluetoothRoutes:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

.field public mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

.field public mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

.field public final mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

.field public final mProfileListener:Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

.field public final mVolumeMap:Landroid/util/SparseIntArray;


# direct methods
.method public static -$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast v1, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/media/LegacyBluetoothRouteController;->addActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 36
    .line 37
    check-cast p1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 58
    .line 59
    iget-object v2, v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    iget-object v2, v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->addActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method public static -$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Clearing active routes with type. type="

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "LBtRouteProvider"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 24
    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 42
    .line 43
    iget-object v2, v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getType()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v2, p1, :cond_0

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0, v1, v2}, Lcom/android/server/media/LegacyBluetoothRouteController;->setRouteConnectionState(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mVolumeMap:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mProfileListener:Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAdapterStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    .line 39
    .line 40
    new-instance v0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mDeviceStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    .line 53
    .line 54
    const-string p2, "audio"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/media/AudioManager;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->buildBluetoothRoutes()V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final addActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Adding active route: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "LBtRouteProvider"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 23
    .line 24
    check-cast v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string p0, "addActiveRoute: btRoute is already added."

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x2

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/LegacyBluetoothRouteController;->setRouteConnectionState(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;I)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 43
    .line 44
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final buildBluetoothRoutes()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-lez v3, :cond_0

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public final createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lcom/android/media/flags/Flags;->enableUseOfBluetoothDeviceGetAliasForMr2infoGetName()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const v3, 0x104000e

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_1
    new-instance v3, Landroid/util/SparseBooleanArray;

    .line 51
    .line 52
    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v3, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    iget-object v3, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 73
    .line 74
    const/4 v5, 0x2

    .line 75
    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    iget-object v1, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 93
    .line 94
    const/16 v3, 0x15

    .line 95
    .line 96
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, "HEARING_AID_"

    .line 102
    .line 103
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 107
    .line 108
    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/16 v3, 0x17

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const/16 v3, 0x8

    .line 123
    .line 124
    :goto_1
    iget-object v5, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 125
    .line 126
    if-eqz v5, :cond_4

    .line 127
    .line 128
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    iget-object v1, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 139
    .line 140
    const/16 v3, 0x16

    .line 141
    .line 142
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v3, "LE_AUDIO_"

    .line 148
    .line 149
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 153
    .line 154
    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const/16 v3, 0x1a

    .line 166
    .line 167
    :cond_4
    new-instance v5, Landroid/media/MediaRoute2Info$Builder;

    .line 168
    .line 169
    invoke-direct {v5, v1, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    const-string v1, "android.media.route.feature.LIVE_AUDIO"

    .line 173
    .line 174
    invoke-virtual {v5, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v2, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const/4 v2, 0x0

    .line 185
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const v5, 0x1040246

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1, v3}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v1, v4}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 219
    .line 220
    const/4 v2, 0x3

    .line 221
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    invoke-virtual {v1, p0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    iput-object p0, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 242
    .line 243
    return-object v0
.end method

.method public final getAllBluetoothRoutes()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 28
    .line 29
    check-cast p0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 50
    .line 51
    iget-object v3, v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v3, v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v2, v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    return-object v0
.end method

.method public final getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    check-cast p0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 25
    .line 26
    :goto_0
    return-object p0
.end method

.method public final getTransferableRoutes()Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->getAllBluetoothRoutes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 26
    .line 27
    move-object v2, v0

    .line 28
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method public final notifyBluetoothRoutesUpdated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setRouteConnectionState(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;I)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    const/16 v2, 0x15

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v4, 0x8

    .line 31
    .line 32
    const/16 v5, 0x1a

    .line 33
    .line 34
    const/16 v6, 0x16

    .line 35
    .line 36
    const/16 v7, 0x17

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    move v1, v7

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 43
    .line 44
    invoke-virtual {v1, v6, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    move v1, v5

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v1, v4

    .line 53
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    if-ne p2, v1, :cond_5

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mVolumeMap:Landroid/util/SparseIntArray;

    .line 60
    .line 61
    iget-object p2, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 62
    .line 63
    invoke-virtual {p2, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    move v4, v7

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget-object p2, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 72
    .line 73
    invoke-virtual {p2, v6, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    move v4, v5

    .line 80
    :cond_4
    :goto_1
    invoke-virtual {p0, v4, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-virtual {v0, p0}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 85
    .line 86
    .line 87
    :cond_5
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iput-object p0, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 92
    .line 93
    return-void
.end method

.method public final start(Landroid/os/UserHandle;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mProfileListener:Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const/16 v2, 0x15

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const/16 v2, 0x16

    .line 25
    .line 26
    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 27
    .line 28
    .line 29
    new-instance v7, Landroid/content/IntentFilter;

    .line 30
    .line 31
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 35
    .line 36
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    iget-object v5, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAdapterStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    .line 44
    .line 45
    move-object v6, p1

    .line 46
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 50
    .line 51
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 52
    .line 53
    const-string v2, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 54
    .line 55
    const-string v3, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 56
    .line 57
    const-string v4, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    .line 58
    .line 59
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const-string v0, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    .line 64
    .line 65
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    iget-object v6, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mDeviceStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    .line 72
    .line 73
    move-object v7, p1

    .line 74
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAdapterStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mDeviceStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final transferTo(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 13
    .line 14
    check-cast v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/4 v2, 0x0

    .line 50
    :goto_0
    if-nez v2, :cond_4

    .line 51
    .line 52
    const-string/jumbo p0, "transferTo: Unknown route. ID="

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "LBtRouteProvider"

    .line 60
    .line 61
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 66
    .line 67
    if-eqz p0, :cond_5

    .line 68
    .line 69
    iget-object p1, v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 70
    .line 71
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 72
    .line 73
    .line 74
    :cond_5
    return-void
.end method

.method public final updateVolumeForDevices(II)Z
    .locals 5

    .line 1
    const/high16 v0, 0x8000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x17

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    and-int/lit16 v0, p1, 0x380

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/16 p1, 0x8

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/high16 v0, 0x20000000

    .line 18
    .line 19
    and-int/2addr p1, v0

    .line 20
    if-eqz p1, :cond_5

    .line 21
    .line 22
    const/16 p1, 0x1a

    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mVolumeMap:Landroid/util/SparseIntArray;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 30
    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 49
    .line 50
    iget-object v4, v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getType()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eq v4, p1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v1, Landroid/media/MediaRoute2Info$Builder;

    .line 60
    .line 61
    iget-object v4, v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 62
    .line 63
    invoke-direct {v1, v4}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p2}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 75
    .line 76
    move v1, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 81
    .line 82
    .line 83
    :cond_4
    return v3

    .line 84
    :cond_5
    return v1
.end method
