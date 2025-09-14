.class public final Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const-string v1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    sparse-switch v4, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    :goto_0
    move v0, v3

    .line 27
    goto :goto_1

    .line 28
    :sswitch_0
    const-string v0, "com.samsung.bluetooth.device.action.AUTO_SWITCH_MODE_CHANGED"

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x2

    .line 38
    goto :goto_1

    .line 39
    :sswitch_1
    const-string v0, "android.intent.action.SETTINGS_SOFT_RESET"

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, p1

    .line 49
    goto :goto_1

    .line 50
    :sswitch_2
    const-string v4, "com.samsung.intent.action.SETTINGS_WIFI_BLUETOOTH_RESET"

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 75
    .line 76
    if-eqz p2, :cond_5

    .line 77
    .line 78
    const-string/jumbo v0, "mReceiver.onReceive - AUTO_SWITCH_MODE_CHANGED"

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object v1, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-ne p2, p1, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setAutoSwitchModeEnabled()V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :pswitch_1
    const-string/jumbo p1, "mReceiver.onReceive - RESET : "

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setAutoSwitchModeEnabled()V

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_3
    return-void

    .line 139
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v2, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 144
    .line 145
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_6

    .line 150
    .line 151
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 152
    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    :cond_6
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 160
    .line 161
    const/16 v2, 0xa

    .line 162
    .line 163
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    const-string/jumbo p2, "onReceive bt state : "

    .line 168
    .line 169
    .line 170
    invoke-static {p1, p2, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/16 p2, 0xf

    .line 174
    .line 175
    if-eq p1, p2, :cond_7

    .line 176
    .line 177
    const/16 p2, 0xc

    .line 178
    .line 179
    if-ne p1, p2, :cond_9

    .line 180
    .line 181
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 182
    .line 183
    iget-boolean p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    .line 184
    .line 185
    if-eqz p1, :cond_8

    .line 186
    .line 187
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    .line 188
    .line 189
    iget-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    iget-object p2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mBtStateReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 194
    .line 195
    .line 196
    :cond_8
    new-instance p1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    invoke-direct {p1, p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    .line 199
    .line 200
    .line 201
    sget-object p0, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 202
    .line 203
    new-instance p2, Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;

    .line 204
    .line 205
    invoke-direct {p2, p1}, Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    :cond_9
    return-void

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :sswitch_data_0
    .sparse-switch
        -0x762243d7 -> :sswitch_2
        -0x5d019e6f -> :sswitch_1
        -0x22e3d3cc -> :sswitch_0
    .end sparse-switch

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
