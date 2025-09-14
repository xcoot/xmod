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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne p2, v1, :cond_1

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Lcom/android/server/media/LegacyBluetoothRouteController;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p2, p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-lez p2, :cond_4

    .line 42
    .line 43
    iget-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    check-cast p2, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x3

    .line 70
    if-eq p2, v1, :cond_2

    .line 71
    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    :cond_2
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object p2, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 90
    .line 91
    iget-object p2, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 92
    .line 93
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    check-cast p2, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 104
    .line 105
    new-instance p3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v0, "Removing active route: "

    .line 108
    .line 109
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    .line 113
    .line 114
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    const-string v0, "LBtRouteProvider"

    .line 122
    .line 123
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iget-object p3, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 127
    .line 128
    check-cast p3, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-eqz p3, :cond_3

    .line 135
    .line 136
    const/4 p3, 0x0

    .line 137
    invoke-virtual {p1, p2, p3}, Lcom/android/server/media/LegacyBluetoothRouteController;->setRouteConnectionState(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;I)V

    .line 138
    .line 139
    .line 140
    :cond_3
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 143
    .line 144
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

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 9
    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 p2, 0xa

    .line 15
    .line 16
    if-eq p1, p2, :cond_1

    .line 17
    .line 18
    const/16 p2, 0xd

    .line 19
    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 p2, 0xc

    .line 24
    .line 25
    if-ne p1, p2, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->buildBluetoothRoutes()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 35
    .line 36
    check-cast p1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 53
    .line 54
    check-cast p1, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void

    .line 65
    :pswitch_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 66
    .line 67
    const-class v2, Landroid/bluetooth/BluetoothDevice;

    .line 68
    .line 69
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const-string v3, "LBtRouteProvider"

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    sparse-switch v4, :sswitch_data_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :sswitch_0
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_3

    .line 99
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

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_4

    .line 110
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

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_5

    .line 121
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

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_6

    .line 132
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

    .line 137
    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_7

    .line 143
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

    .line 148
    .line 149
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_8

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_8
    const/4 v0, 0x0

    .line 157
    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 158
    .line 159
    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :pswitch_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 168
    .line 169
    const/16 p2, 0x17

    .line 170
    .line 171
    invoke-static {p1, p2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    .line 172
    .line 173
    .line 174
    if-eqz v1, :cond_9

    .line 175
    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string p2, "Setting active hearing aid devices. device="

    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 194
    .line 195
    invoke-static {p1, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V

    .line 196
    .line 197
    .line 198
    :cond_9
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 205
    .line 206
    const/16 p2, 0x8

    .line 207
    .line 208
    invoke-static {p1, p2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    .line 209
    .line 210
    .line 211
    if-eqz v1, :cond_a

    .line 212
    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string p2, "Setting active a2dp devices. device="

    .line 216
    .line 217
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 231
    .line 232
    invoke-static {p1, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V

    .line 233
    .line 234
    .line 235
    :cond_a
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :pswitch_4
    const/16 p1, 0x15

    .line 242
    .line 243
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 248
    .line 249
    const/16 p2, 0x1a

    .line 250
    .line 251
    invoke-static {p1, p2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    .line 252
    .line 253
    .line 254
    if-eqz v1, :cond_b

    .line 255
    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string p2, "Setting active le audio devices. device="

    .line 259
    .line 260
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 274
    .line 275
    invoke-static {p1, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V

    .line 276
    .line 277
    .line 278
    :cond_b
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :pswitch_6
    const/16 p1, 0x16

    .line 285
    .line 286
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 287
    .line 288
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

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
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

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
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
