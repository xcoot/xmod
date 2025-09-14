.class public final Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAutoSwitchModeChangedConsumer:Ljava/util/function/Consumer;

.field public final mAutoSwitchableDevices:Ljava/util/ArrayList;

.field public final mBtStateReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

.field public final mContext:Landroid/content/Context;

.field public mIsAutoSwitchModeEnabled:Z

.field public mIsRegisterBtStateReceiver:Z

.field public final mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchModeChangedConsumer:Ljava/util/function/Consumer;

    .line 15
    .line 16
    new-instance p1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mBtStateReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 23
    .line 24
    new-instance p1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mName:Ljava/lang/String;

    .line 10
    .line 11
    const-string v3, ", bt="

    .line 12
    .line 13
    const-string v4, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, "addDevice - already exist name="

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/samsung/android/server/continuity/common/Utils;->secureName(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/Utils;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v5, "addDevice - (added) name="

    .line 52
    .line 53
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lcom/samsung/android/server/continuity/common/Utils;->secureName(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/Utils;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public final removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v0, "removeDevice - (removed) name="

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/continuity/common/Utils;->secureName(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ", bt="

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/samsung/android/server/continuity/common/Utils;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    .line 45
    .line 46
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final setAutoSwitchModeEnabled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v1, "setAutoSwitchModeEnabled - "

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    .line 27
    .line 28
    const-string v2, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    .line 29
    .line 30
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchModeChangedConsumer:Ljava/util/function/Consumer;

    .line 34
    .line 35
    iget-boolean p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final setStandAloneBleMode(Z)V
    .locals 7

    .line 1
    const-string/jumbo v0, "semSetSystemAppStandAloneBleMode"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setStandAloneBleMode - "

    .line 5
    .line 6
    .line 7
    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 8
    .line 9
    const-string/jumbo v2, "ro.factory.factory_binary"

    .line 10
    .line 11
    .line 12
    const-string v3, "Unknown"

    .line 13
    .line 14
    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "factory"

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const-string/jumbo p0, "setStandAloneBleMode - FactoryBinary, ignore!"

    .line 29
    .line 30
    .line 31
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-string v2, "bluetooth"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    const-string/jumbo p0, "setStandAloneBleMode - null bluetoothManager"

    .line 48
    .line 49
    .line 50
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-nez p0, :cond_2

    .line 61
    .line 62
    const-string/jumbo p0, "setStandAloneBleMode - null bluetoothAdapter"

    .line 63
    .line 64
    .line 65
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    const v2, 0x27100

    .line 87
    .line 88
    .line 89
    if-lt v1, v2, :cond_3

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const/4 v4, 0x2

    .line 97
    new-array v4, v4, [Ljava/lang/Class;

    .line 98
    .line 99
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 100
    .line 101
    aput-object v5, v4, v1

    .line 102
    .line 103
    const-class v5, Ljava/lang/String;

    .line 104
    .line 105
    const/4 v6, 0x1

    .line 106
    aput-object v5, v4, v6

    .line 107
    .line 108
    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v4, "autoswitch"

    .line 117
    .line 118
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    goto :goto_0

    .line 133
    :catch_1
    move-exception p0

    .line 134
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->semSetStandAloneBleMode(Z)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    :goto_0
    if-nez v1, :cond_4

    .line 159
    .line 160
    const-string/jumbo p0, "setStandAloneBleMode - Failed to set StandAlone Ble Mode"

    .line 161
    .line 162
    .line 163
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string/jumbo v0, "setStandAloneBleMode - SecurityException "

    .line 170
    .line 171
    .line 172
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_4
    :goto_2
    return-void
.end method
