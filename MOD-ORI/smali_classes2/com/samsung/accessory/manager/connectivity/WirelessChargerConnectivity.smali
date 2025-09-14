.class public final Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field public final mReadTriggerReceiver:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

.field public msgState:I

.field public final readTriggerIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 6
    .line 7
    new-instance p1, Landroid/content/IntentFilter;

    .line 8
    .line 9
    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->readTriggerIntentFilter:Landroid/content/IntentFilter;

    .line 15
    .line 16
    new-instance p1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;-><init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    .line 22
    .line 23
    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 29
    .line 30
    return-void
.end method

.method public static convertSessionState(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    const-string p0, "SESSION_NONE"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "SESSION_STATE_ERROR"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "SESSION_STATE_STOPPED"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "SESSION_STATE_STOPPING"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "SESSION_STATE_STARTED"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "SESSION_STATE_STARTING"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "SESSION_STATE_READY"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final connect()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->onConnectionStateChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final disable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final disconnect()V
    .locals 0

    .line 1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final enable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isEnabledInternally()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final openNode()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->wirelesscharger_open()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "SAccessoryManager_WirelessChargerConnectivity"

    .line 8
    .line 9
    const-string/jumbo v2, "register receiver"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->readTriggerIntentFilter:Landroid/content/IntentFilter;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    .line 20
    .line 21
    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v2, "open batt_misc ret = "

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    if-gez v0, :cond_0

    .line 43
    .line 44
    const-string/jumbo p0, "open fail"

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    :cond_0
    const/4 p0, 0x1

    .line 53
    return p0
.end method

.method public final sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final sendStopAuth()Z
    .locals 2

    .line 1
    const-string v0, "SAccessoryManager_WirelessChargerConnectivity"

    .line 2
    .line 3
    const-string v1, "close batt_misc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "unregister receiver"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final sendStopUsbAuth()V
    .locals 0

    .line 1
    return-void
.end method

.method public final sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide/16 v2, 0xf

    .line 4
    .line 5
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "data write msgState: "

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v3, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 16
    .line 17
    const-string v4, "SAccessoryManager_WirelessChargerConnectivity"

    .line 18
    .line 19
    invoke-static {v2, v3, v4}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite_batt([B)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    new-array v5, v1, [B

    .line 29
    .line 30
    const/4 v6, -0x2

    .line 31
    aput-byte v6, v5, v0

    .line 32
    .line 33
    new-array v6, v1, [B

    .line 34
    .line 35
    const/4 v7, -0x1

    .line 36
    aput-byte v7, v6, v0

    .line 37
    .line 38
    array-length p1, p1

    .line 39
    if-eq v3, p1, :cond_0

    .line 40
    .line 41
    const-string p0, "command write fail"

    .line 42
    .line 43
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object v6

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "getSessionState: "

    .line 50
    .line 51
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v6, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 55
    .line 56
    invoke-static {v6}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->convertSessionState(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_1
    const-wide/16 v6, 0x64

    .line 71
    .line 72
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    :catch_1
    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 76
    .line 77
    const/4 v8, 0x3

    .line 78
    if-eq p1, v1, :cond_2

    .line 79
    .line 80
    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 81
    .line 82
    if-eq p1, v8, :cond_1

    .line 83
    .line 84
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v9, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 90
    .line 91
    invoke-static {v9}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->convertSessionState(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 106
    .line 107
    const/4 v9, 0x5

    .line 108
    if-ne p1, v9, :cond_3

    .line 109
    .line 110
    return-object v5

    .line 111
    :cond_3
    const-wide/16 v10, 0x32

    .line 112
    .line 113
    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    .line 115
    .line 116
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v10, "bit clear, msgState: "

    .line 119
    .line 120
    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v10, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 124
    .line 125
    invoke-static {p1, v10, v4}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 129
    .line 130
    .line 131
    :catch_3
    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 132
    .line 133
    if-ne p1, v1, :cond_5

    .line 134
    .line 135
    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 136
    .line 137
    if-eq p1, v8, :cond_4

    .line 138
    .line 139
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v3, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 145
    .line 146
    invoke-static {v3}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->convertSessionState(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iget p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 161
    .line 162
    if-ne p0, v9, :cond_6

    .line 163
    .line 164
    return-object v5

    .line 165
    :cond_6
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead_batt()[B

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v2, "api: "

    .line 172
    .line 173
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget p2, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p2, ", receive: "

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    if-eqz p0, :cond_8

    .line 187
    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    move v2, v0

    .line 194
    :goto_0
    array-length v3, p0

    .line 195
    if-ge v2, v3, :cond_7

    .line 196
    .line 197
    aget-byte v3, p0, v2

    .line 198
    .line 199
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const-string v5, "%02x"

    .line 208
    .line 209
    invoke-static {v5, v3, p2, v2, v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    goto :goto_0

    .line 214
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    goto :goto_1

    .line 219
    :cond_8
    const-string/jumbo p2, "null"

    .line 220
    .line 221
    .line 222
    :goto_1
    invoke-static {p1, p2, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    array-length p1, p0

    .line 226
    add-int/lit8 p2, p1, 0x1

    .line 227
    .line 228
    new-array p2, p2, [B

    .line 229
    .line 230
    move v2, v0

    .line 231
    :goto_2
    array-length v3, p0

    .line 232
    if-ge v2, v3, :cond_9

    .line 233
    .line 234
    aget-byte v3, p0, v2

    .line 235
    .line 236
    aput-byte v3, p2, v2

    .line 237
    .line 238
    add-int/2addr v2, v1

    .line 239
    goto :goto_2

    .line 240
    :cond_9
    aput-byte v0, p2, p1

    .line 241
    .line 242
    return-object p2
.end method

.method public final setStateChangedCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 2
    .line 3
    return-void
.end method
