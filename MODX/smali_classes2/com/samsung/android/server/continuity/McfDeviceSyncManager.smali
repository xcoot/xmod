.class public final Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final MSG_AVAILABLE_MCF:I = 0x5

.field static final MSG_BIND_MCF:I = 0x2

.field static final MSG_REPLACED_PKG:I = 0x4

.field static final MSG_START_USER:I = 0x0

.field static final MSG_STOP_USER:I = 0x1

.field static final MSG_UNBIND_MCF:I = 0x3


# instance fields
.field public mCurrentUserHandle:Landroid/os/UserHandle;

.field public final mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

.field public final mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

.field public mIsValidState:Z

.field public final mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 7
    .line 8
    new-instance p1, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final initMcfDeviceSyncMainController(I)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne p1, v0, :cond_2

    .line 7
    .line 8
    iget-object v0, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 9
    .line 10
    iget-object v4, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, v0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    move-object v0, v3

    .line 34
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v5, "initMcfDeviceSyncMainController, bindReason: "

    .line 42
    .line 43
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v5, ", hasAutoSwitchDeviceMac: "

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    move v6, v5

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move v6, v2

    .line 60
    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v6, "[MCF_DS_LIB]_DeviceSyncManager"

    .line 68
    .line 69
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance v4, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v6, "KEY_BIND_REASON"

    .line 78
    .line 79
    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    const-string p1, "KEY_AUTO_SWITCH_DEVICE"

    .line 83
    .line 84
    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/16 v0, 0x3ea

    .line 97
    .line 98
    iput v0, p1, Landroid/os/Message;->what:I

    .line 99
    .line 100
    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->sendMessage(Landroid/os/Message;)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    const/4 p1, 0x3

    .line 107
    if-ne p0, p1, :cond_8

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const-string p0, "[MCF_DS_SYS]_PreconditionObserver"

    .line 113
    .line 114
    const-string/jumbo p1, "setAutoSwitchOff"

    .line 115
    .line 116
    .line 117
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    if-eqz p0, :cond_8

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_4

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-eqz p0, :cond_8

    .line 138
    .line 139
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-nez p0, :cond_8

    .line 144
    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string p1, "disableAutoSwitchDevices - mAutoSwitchableDevices size:"

    .line 148
    .line 149
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 153
    .line 154
    iget-object v0, p1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const-string v0, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    .line 168
    .line 169
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    iget-object p0, p1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_8

    .line 183
    .line 184
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    .line 191
    .line 192
    if-nez p1, :cond_7

    .line 193
    .line 194
    :cond_6
    move-object p1, v3

    .line 195
    goto :goto_4

    .line 196
    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v0, :cond_6

    .line 201
    .line 202
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    :goto_4
    if-eqz p1, :cond_5

    .line 207
    .line 208
    sget-object v0, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-ne v0, v5, :cond_5

    .line 215
    .line 216
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_8
    :goto_5
    return-void
.end method

.method public removeAndSendMessageDelayed(IIJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->sendMessageDelayed(IIJ)V

    return-void
.end method

.method public removeAndSendMessageDelayed(IJ)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final removeMessage(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final startUser(Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const-string/jumbo p0, "startUser - invalid request!"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v1, "startUser : "

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final stopUser()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 5
    .line 6
    iget-boolean v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsPkgObserverRegistered:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v4, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    .line 14
    .line 15
    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    .line 17
    .line 18
    iput-boolean v3, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsPkgObserverRegistered:Z

    .line 19
    .line 20
    :cond_0
    iget-boolean v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v4, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    const/4 v2, 0x2

    .line 43
    invoke-static {v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 50
    .line 51
    iput-boolean v3, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    .line 52
    .line 53
    iget-object v4, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v5, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v4, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iput-boolean v3, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    .line 65
    .line 66
    iget-object v4, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mBtStateReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iput-boolean v3, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    .line 74
    .line 75
    :goto_0
    iget-boolean v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 76
    .line 77
    const-string v4, "[MCF_DS_SYS]_PreconditionObserver"

    .line 78
    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    const-string/jumbo v2, "removeOnAccountsUpdatedListener - already added"

    .line 82
    .line 83
    .line 84
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const-string/jumbo v2, "removeOnAccountsUpdatedListener"

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v4, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 103
    .line 104
    .line 105
    iget v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    iget-object v4, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/continuity/PreconditionObserver$1;

    .line 112
    .line 113
    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    iput-boolean v3, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 117
    .line 118
    :goto_1
    iput-object v0, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    .line 119
    .line 120
    iput v3, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 121
    .line 122
    const/16 v0, -0x2710

    .line 123
    .line 124
    iput v0, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final unbindMcf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string/jumbo v0, "unbindMcf - remove bind message"

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 22
    .line 23
    iget v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string/jumbo p0, "unbindMcf - invalid state "

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p0, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-string/jumbo v0, "unbindMcf"

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 41
    .line 42
    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string p0, "disconnectService : invalid request"

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const-string v0, "disconnectService"

    .line 53
    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/16 v3, 0xb

    .line 67
    .line 68
    iput v3, v2, Landroid/os/Message;->what:I

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->sendMessage(Landroid/os/Message;)I

    .line 74
    .line 75
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceConnection:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    const-string v0, "disconnectService : IllegalArgumentException"

    .line 85
    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :goto_0
    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 91
    .line 92
    iput-object v3, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 93
    .line 94
    iput-object v3, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    .line 95
    .line 96
    :goto_1
    return-void
.end method
