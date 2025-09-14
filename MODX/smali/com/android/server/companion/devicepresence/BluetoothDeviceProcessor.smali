.class public final Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;
.super Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# instance fields
.field public final mAllConnectedDevices:Ljava/util/Map;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    .line 11
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 13
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 15
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 17
    return-void
.end method


# virtual methods
.method public final onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 17
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    .line 28
    :cond_0
    return-void
.end method

.method public final onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    .line 11
    check-cast v1, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 24
    return-void
.end method

.method public final onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/companion/AssociationInfo;

    .line 31
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    .line 41
    move-result v3

    .line 42
    if-eqz p2, :cond_1

    .line 44
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 46
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 49
    move-result v2

    .line 50
    invoke-virtual {v4, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 56
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 59
    move-result v2

    .line 60
    invoke-virtual {v4, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceDisconnected(II)V

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 66
    iget-object v2, v1, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    .line 68
    monitor-enter v2

    .line 69
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    .line 72
    move-result-object v0

    .line 73
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    move-result-object p1

    .line 93
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v0

    .line 97
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_6

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 109
    iget-object v2, v1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_4

    .line 117
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 119
    if-eqz p2, :cond_5

    .line 121
    const/4 v3, 0x2

    .line 122
    goto :goto_3

    .line 123
    :cond_5
    const/4 v3, 0x3

    .line 124
    :goto_3
    invoke-virtual {v2, v1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    return-void

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    throw p0
.end method

.method public final onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    .line 11
    check-cast v0, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 24
    return-void
.end method
