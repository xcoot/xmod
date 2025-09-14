.class public final Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public static -$$Nest$mhandleBatteryLevelChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ltz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string/jumbo v1, "type : "

    .line 21
    .line 22
    .line 23
    const-string v2, "BluetoothDeviceBatteryManager"

    .line 24
    .line 25
    const/16 v3, 0xb

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eq v5, v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eq v4, v3, :cond_0

    .line 51
    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eq v1, v2, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 90
    .line 91
    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    .line 92
    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eq v0, v4, :cond_2

    .line 102
    .line 103
    if-eq v0, v3, :cond_2

    .line 104
    .line 105
    invoke-static {v0, v1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeBatteryInfo(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_0
    return-void
.end method

.method public static -$$Nest$mhandleDeviceNameChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "address : "

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " / alias : "

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v2, "BluetoothDeviceBatteryManager"

    .line 54
    .line 55
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 62
    .line 63
    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    .line 64
    .line 65
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public static -$$Nest$mhandleMetaDataChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "level : "

    .line 12
    .line 13
    const-string/jumbo v2, "type : "

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    const-string v4, "BluetoothDeviceBatteryManager"

    .line 18
    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eq v5, v3, :cond_0

    .line 36
    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_0
    const/4 v2, 0x0

    .line 59
    const/4 v5, 0x1

    .line 60
    if-ne p2, v3, :cond_2

    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-ne p2, v5, :cond_1

    .line 67
    .line 68
    move v2, v5

    .line 69
    :cond_1
    invoke-static {v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-ne p2, v5, :cond_4

    .line 74
    .line 75
    move v2, v5

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    if-ne p2, v5, :cond_3

    .line 78
    .line 79
    invoke-static {v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/4 v3, 0x2

    .line 85
    if-ne p2, v3, :cond_4

    .line 86
    .line 87
    invoke-static {v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    :cond_4
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo v3, "sendBroadcast : "

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {v4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {v4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-gez p2, :cond_5

    .line 133
    .line 134
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeBatteryInfo(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    if-eqz v2, :cond_9

    .line 145
    .line 146
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 147
    .line 148
    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    .line 149
    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eq p2, v3, :cond_7

    .line 159
    .line 160
    invoke-static {p2, v2, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-static {p2, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    .line 169
    .line 170
    .line 171
    invoke-static {p2, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    .line 172
    .line 173
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-gez v0, :cond_8

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-ltz v0, :cond_8

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-virtual {p2, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 210
    .line 211
    .line 212
    :cond_8
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-ltz p1, :cond_9

    .line 217
    .line 218
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 219
    .line 220
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    :goto_1
    return-void
.end method

.method public static -$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "# Alias("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ") / Address("

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ")"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "BluetoothDeviceBatteryManager"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "# BatteryLevel : "

    .line 48
    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x3

    .line 6
    return p0

    .line 7
    :cond_0
    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 8
    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 19
    return p0
.end method

.method public static createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public static decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .locals 2

    .line 1
    and-int/lit16 v0, p0, 0xf0

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0xf

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p0, v1, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const-string p0, "BluetoothDeviceBatteryManager"

    .line 23
    .line 24
    const-string v0, "CHARGE_STATE_WIRELESS_CHARGE"

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 30
    .line 31
    :cond_2
    return-object p0
.end method

.method public static getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 11

    .line 1
    const-string v0, "BluetoothDeviceBatteryManager"

    .line 2
    .line 3
    const-string v1, "ManufacturerType : "

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v3, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;

    .line 11
    .line 12
    invoke-direct {v3, p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;-><init>([B)V

    .line 13
    .line 14
    .line 15
    iget p0, v3, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    .line 16
    .line 17
    iget-object v3, v3, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "deviceId : "

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v4, 0x2

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    array-length v6, v3

    .line 53
    mul-int/2addr v6, v4

    .line 54
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .line 56
    .line 57
    array-length v6, v3

    .line 58
    move v7, v1

    .line 59
    :goto_0
    if-ge v7, v6, :cond_1

    .line 60
    .line 61
    aget-byte v8, v3, v7

    .line 62
    .line 63
    and-int/lit16 v9, v8, 0xf0

    .line 64
    .line 65
    shr-int/lit8 v9, v9, 0x4

    .line 66
    .line 67
    const-string v10, "0123456789abcdef"

    .line 68
    .line 69
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    and-int/lit8 v8, v8, 0xf

    .line 77
    .line 78
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v7, v7, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    aget-byte p0, v3, v1

    .line 105
    .line 106
    if-ne p0, v2, :cond_2

    .line 107
    .line 108
    aget-byte v1, v3, v2

    .line 109
    .line 110
    if-ne v1, v2, :cond_2

    .line 111
    .line 112
    const-string p0, "Type R170"

    .line 113
    .line 114
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    const/16 p0, 0xb

    .line 118
    .line 119
    return p0

    .line 120
    :catch_0
    move-exception p0

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    const/4 v1, 0x3

    .line 123
    if-eq p0, v2, :cond_3

    .line 124
    .line 125
    if-eq p0, v4, :cond_3

    .line 126
    .line 127
    if-ne p0, v1, :cond_4

    .line 128
    .line 129
    :cond_3
    const-string p0, "Type Buds"

    .line 130
    .line 131
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    return v1

    .line 135
    :goto_2
    const-string v1, "getDeviceType exception: "

    .line 136
    .line 137
    invoke-static {p0, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    return v2
.end method

.method public static parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    and-int/lit16 v3, p1, 0xff

    .line 8
    .line 9
    int-to-byte v3, v3

    .line 10
    aput-byte v3, v1, v2

    .line 11
    .line 12
    shr-int/lit8 p1, p1, 0x8

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "BluetoothDeviceBatteryManager"

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    array-length v0, p0

    .line 26
    const/4 v1, 0x3

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    aget-byte p0, p0, v1

    .line 30
    .line 31
    const-string/jumbo v0, "parsedData : "

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0, p1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string/jumbo p0, "parsedData error"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p0, -0x1

    .line 45
    :goto_1
    return p0
.end method

.method public static setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 1
    const/16 v0, 0x208

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "# Left Level: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "BluetoothDeviceBatteryManager"

    .line 22
    .line 23
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x209

    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, "# Right Level: "

    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/16 v3, 0x20a

    .line 50
    .line 51
    invoke-static {p1, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const-string v3, "# Cradle Level: "

    .line 56
    .line 57
    invoke-static {p1, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    if-gez v0, :cond_0

    .line 61
    .line 62
    move v2, v1

    .line 63
    move v1, v0

    .line 64
    move v0, v2

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    if-gez v1, :cond_1

    .line 67
    .line 68
    move v2, v1

    .line 69
    move v1, v0

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    sub-int v2, v0, v1

    .line 72
    .line 73
    if-lez v2, :cond_2

    .line 74
    .line 75
    move v3, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move v3, v0

    .line 78
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/16 v4, 0xf

    .line 83
    .line 84
    if-gt v2, v4, :cond_3

    .line 85
    .line 86
    const/4 v0, -0x1

    .line 87
    move v1, v0

    .line 88
    move v2, v1

    .line 89
    :goto_1
    move v0, v3

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move v2, v1

    .line 92
    move v1, v0

    .line 93
    goto :goto_1

    .line 94
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-ne v3, v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelLeft()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-ne v3, v1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelRight()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-ne v3, v2, :cond_5

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelCradle()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eq v3, p1, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    const/4 p0, 0x0

    .line 120
    goto :goto_4

    .line 121
    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelLeft(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelRight(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelCradle(I)V

    .line 131
    .line 132
    .line 133
    const/4 p0, 0x1

    .line 134
    :goto_4
    return p0
.end method

.method public static setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    .line 1
    const/16 v0, 0x11a

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "# Charge Feature :"

    .line 8
    .line 9
    const-string v2, "BluetoothDeviceBatteryManager"

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    const/16 v0, 0x228

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "# Left Charging: "

    .line 33
    .line 34
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v0, v3

    .line 53
    :goto_0
    const/16 v1, 0x229

    .line 54
    .line 55
    invoke-static {p1, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ltz v1, :cond_1

    .line 60
    .line 61
    invoke-static {v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v5, "# Right Charging : "

    .line 68
    .line 69
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move v1, v3

    .line 88
    :goto_1
    const/16 v4, 0x22a

    .line 89
    .line 90
    invoke-static {p1, v4}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-ltz p1, :cond_2

    .line 95
    .line 96
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v5, "# Cradle Charging : "

    .line 103
    .line 104
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    move p1, v3

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move p1, v3

    .line 125
    move v0, p1

    .line 126
    move v1, v0

    .line 127
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-ne v2, v3, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusLeft()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-ne v2, v0, :cond_5

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusRight()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-ne v2, v1, :cond_5

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusCradle()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eq v2, p1, :cond_4

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_4
    const/4 v3, 0x0

    .line 153
    goto :goto_4

    .line 154
    :cond_5
    :goto_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusLeft(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusRight(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusCradle(I)V

    .line 164
    .line 165
    .line 166
    :goto_4
    return v3
.end method
