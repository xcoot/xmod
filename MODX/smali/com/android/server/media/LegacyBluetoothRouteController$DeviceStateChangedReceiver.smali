.class public final Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/media/LegacyBluetoothRouteController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/LegacyBluetoothRouteController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result p2

    .line 8
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 10
    iget-object v0, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 12
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    check-cast v0, Ljava/util/HashMap;

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne p2, v1, :cond_1

    .line 27
    if-nez v0, :cond_0

    .line 29
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 31
    invoke-virtual {p1, p3}, Lcom/android/server/media/LegacyBluetoothRouteController;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 34
    move-result-object p1

    .line 35
    iget-object p2, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 37
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 40
    move-result p2

    .line 41
    if-lez p2, :cond_4

    .line 43
    iget-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 45
    iget-object p2, p2, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 47
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 50
    move-result-object p3

    .line 51
    check-cast p2, Ljava/util/HashMap;

    .line 53
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 64
    const/4 p2, 0x1

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x3

    .line 70
    if-eq p2, v1, :cond_2

    .line 72
    if-nez p2, :cond_4

    .line 74
    :cond_2
    if-eqz v0, :cond_4

    .line 76
    iget-object p2, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 78
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 81
    iget-object p1, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 83
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 89
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 91
    iget-object p2, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 93
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 96
    move-result-object p3

    .line 97
    check-cast p2, Ljava/util/HashMap;

    .line 99
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 105
    new-instance p3, Ljava/lang/StringBuilder;

    .line 107
    const-string v0, "Removing active route: "

    .line 109
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v0, p2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 114
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p3

    .line 121
    const-string v0, "LBtRouteProvider"

    .line 123
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p3, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 128
    check-cast p3, Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    move-result p3

    .line 134
    if-eqz p3, :cond_3

    .line 136
    const/4 p3, 0x0

    .line 137
    invoke-virtual {p1, p2, p3}, Lcom/android/server/media/LegacyBluetoothRouteController;->setRouteConnectionState(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;I)V

    .line 140
    :cond_3
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 142
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 145
    :cond_4
    :goto_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, -0x1

    .line 3
    iget v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 14
    const/16 p2, 0xa

    .line 16
    if-eq p1, p2, :cond_1

    .line 18
    const/16 p2, 0xd

    .line 20
    if-ne p1, p2, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 p2, 0xc

    .line 25
    if-ne p1, p2, :cond_2

    .line 27
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 29
    invoke-virtual {p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->buildBluetoothRoutes()V

    .line 32
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 34
    iget-object p1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 36
    check-cast p1, Ljava/util/HashMap;

    .line 38
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 44
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 52
    iget-object p1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 54
    check-cast p1, Ljava/util/HashMap;

    .line 56
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 59
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 64
    :cond_2
    :goto_1
    return-void

    .line 65
    :pswitch_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 67
    const-class v2, Landroid/bluetooth/BluetoothDevice;

    .line 69
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    const-string v3, "LBtRouteProvider"

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 87
    move-result v4

    .line 88
    sparse-switch v4, :sswitch_data_0

    .line 91
    goto :goto_2

    .line 92
    :sswitch_0
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_3

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/4 v0, 0x5

    .line 102
    goto :goto_2

    .line 103
    :sswitch_1
    const-string v4, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_4

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    const/4 v0, 0x4

    .line 113
    goto :goto_2

    .line 114
    :sswitch_2
    const-string v4, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_5

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    const/4 v0, 0x3

    .line 124
    goto :goto_2

    .line 125
    :sswitch_3
    const-string v4, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_6

    .line 133
    goto :goto_2

    .line 134
    :cond_6
    move v0, p1

    .line 135
    goto :goto_2

    .line 136
    :sswitch_4
    const-string v4, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_7

    .line 144
    goto :goto_2

    .line 145
    :cond_7
    const/4 v0, 0x1

    .line 146
    goto :goto_2

    .line 147
    :sswitch_5
    const-string v4, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    .line 149
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_8

    .line 155
    goto :goto_2

    .line 156
    :cond_8
    const/4 v0, 0x0

    .line 157
    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 160
    goto/16 :goto_3

    .line 162
    :pswitch_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 165
    goto/16 :goto_3

    .line 167
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 169
    const/16 p2, 0x17

    .line 171
    invoke-static {p1, p2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    .line 174
    if-eqz v1, :cond_9

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    .line 178
    const-string p2, "Setting active hearing aid devices. device="

    .line 180
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 195
    invoke-static {p1, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V

    .line 198
    :cond_9
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 200
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 203
    goto :goto_3

    .line 204
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 206
    const/16 p2, 0x8

    .line 208
    invoke-static {p1, p2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    .line 211
    if-eqz v1, :cond_a

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    .line 215
    const-string p2, "Setting active a2dp devices. device="

    .line 217
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 232
    invoke-static {p1, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V

    .line 235
    :cond_a
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 237
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 240
    goto :goto_3

    .line 241
    :pswitch_4
    const/16 p1, 0x15

    .line 243
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 246
    goto :goto_3

    .line 247
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 249
    const/16 p2, 0x1a

    .line 251
    invoke-static {p1, p2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    .line 254
    if-eqz v1, :cond_b

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    .line 258
    const-string p2, "Setting active le audio devices. device="

    .line 260
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p1

    .line 270
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 275
    invoke-static {p1, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V

    .line 278
    :cond_b
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 283
    goto :goto_3

    .line 284
    :pswitch_6
    const/16 p1, 0x16

    .line 286
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 289
    :goto_3
    return-void

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 297
    :sswitch_data_0
    .sparse-switch
        -0x693eab85 -> :sswitch_5
        -0x2caca392 -> :sswitch_4
        -0x2486726f -> :sswitch_3
        0x1d0d7e43 -> :sswitch_2
        0x461dab18 -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch

    .line 323
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
