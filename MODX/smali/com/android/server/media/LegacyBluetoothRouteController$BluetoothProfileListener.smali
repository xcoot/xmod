.class public final Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/LegacyBluetoothRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/LegacyBluetoothRouteController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_2

    .line 4
    const/16 v0, 0x15

    .line 6
    if-eq p1, v0, :cond_1

    .line 8
    const/16 v0, 0x16

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 15
    move-object v1, p2

    .line 16
    check-cast v1, Landroid/bluetooth/BluetoothLeAudio;

    .line 18
    iput-object v1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 20
    iget-object p1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 22
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 29
    move-object v1, p2

    .line 30
    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    .line 32
    iput-object v1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 34
    iget-object p1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 36
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 43
    move-object v1, p2

    .line 44
    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    .line 46
    iput-object v1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 48
    iget-object p1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 50
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    .line 57
    move-result-object p2

    .line 58
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object p2

    .line 62
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 68
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 74
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 76
    iget-object v1, v1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 78
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    check-cast v1, Ljava/util/HashMap;

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 90
    if-nez v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 94
    invoke-virtual {v1, v0}, Lcom/android/server/media/LegacyBluetoothRouteController;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 97
    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 100
    iget-object v2, v2, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 102
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 105
    move-result-object v3

    .line 106
    check-cast v2, Ljava/util/HashMap;

    .line 108
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->addActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 125
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 128
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_2

    .line 5
    const/16 v0, 0x15

    .line 7
    if-eq p1, v0, :cond_1

    .line 9
    const/16 v0, 0x16

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 16
    iput-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 21
    iput-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 26
    iput-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 28
    :goto_0
    return-void
.end method
