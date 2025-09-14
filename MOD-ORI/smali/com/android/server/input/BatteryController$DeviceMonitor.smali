.class public Lcom/android/server/input/BatteryController$DeviceMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBluetoothBatteryLevel:I

.field public mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public mBluetoothEventTime:J

.field public mBluetoothMetadataBatteryLevel:I

.field public mBluetoothMetadataBatteryStatus:I

.field public mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

.field public mHasBattery:Z

.field public final mState:Lcom/android/server/input/BatteryController$State;

.field public mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/input/BatteryController$State;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Lcom/android/server/input/BatteryController$State;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->configureDeviceMonitor(J)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final configureDeviceMonitor(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 2
    .line 3
    iget v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    new-instance v5, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-direct {v5, v6}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eq v2, v4, :cond_4

    .line 34
    .line 35
    iget-boolean v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    .line 36
    .line 37
    xor-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget v2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 44
    .line 45
    iget-object v4, v3, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 46
    .line 47
    invoke-interface {v4, v2}, Lcom/android/server/input/NativeInputManagerService;->getBatteryDevicePath(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget v0, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 55
    .line 56
    new-instance v4, Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    .line 57
    .line 58
    invoke-direct {v4, p0, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor$1;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    .line 59
    .line 60
    .line 61
    iput-object v4, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v6, "DEVPATH="

    .line 66
    .line 67
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v6, "/sys"

    .line 71
    .line 72
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    const/4 v6, 0x4

    .line 79
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v2, v3, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object v2, v4, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-object v2, v3, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object v0, v0, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 113
    .line 114
    .line 115
    iput-object v5, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    .line 116
    .line 117
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBatteryStateFromNative(J)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v0, v3, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    new-instance v2, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    const/4 v4, 0x3

    .line 125
    invoke-direct {v2, v4}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v1, v5, v2}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v0, v2}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 139
    .line 140
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_7

    .line 145
    .line 146
    sget-boolean v2, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v4, "Bluetooth device is now "

    .line 153
    .line 154
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    const-string v4, ""

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    const-string/jumbo v4, "not"

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v4, " present for deviceId "

    .line 169
    .line 170
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string v2, "BatteryController"

    .line 181
    .line 182
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_6
    const/4 v1, -0x1

    .line 186
    iput v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->stopBluetoothMetadataMonitoring()V

    .line 189
    .line 190
    .line 191
    iput-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/android/server/input/BatteryController;->updateBluetoothBatteryMonitoring()V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 197
    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-object v1, v3, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    .line 205
    .line 206
    invoke-interface {v1, v0}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->getBatteryLevel(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    .line 211
    .line 212
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 213
    .line 214
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    .line 218
    .line 219
    invoke-direct {v0, v3}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController;)V

    .line 220
    .line 221
    .line 222
    iput-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    .line 231
    .line 232
    invoke-interface {v1, v0, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->addMetadataListener(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 236
    .line 237
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const/16 v2, 0x12

    .line 242
    .line 243
    invoke-interface {v1, v2, v0}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->getMetadata(ILjava/lang/String;)[B

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBluetoothMetadataState(J[BI)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const/16 v2, 0x13

    .line 257
    .line 258
    invoke-interface {v1, v2, v0}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->getMetadata(ILjava/lang/String;)[B

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBluetoothMetadataState(J[BI)V

    .line 263
    .line 264
    .line 265
    :cond_7
    return-void
.end method

.method public getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/input/BatteryController$State;

    .line 16
    .line 17
    return-object p0
.end method

.method public onConfiguration(J)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPoll(J)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onStylusGestureStarted(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTimeout(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUEvent(J)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final processChangesAndNotify(JLjava/util/function/Consumer;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-wide p2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 17
    .line 18
    iget-wide v1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 19
    .line 20
    iput-wide v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/hardware/input/IInputDeviceBatteryState;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput-wide p2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 31
    .line 32
    const-string p2, "Notifying all listeners of battery state: "

    .line 33
    .line 34
    iget-object p3, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter p3

    .line 37
    :try_start_0
    sget-boolean v0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const-string v0, "BatteryController"

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 62
    .line 63
    new-instance p2, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/input/BatteryController$State;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 69
    .line 70
    .line 71
    monitor-exit p3

    .line 72
    goto :goto_2

    .line 73
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_1
    :goto_2
    return-void
.end method

.method public final resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    if-gt v0, v1, :cond_1

    .line 15
    .line 16
    :goto_0
    new-instance v8, Lcom/android/server/input/BatteryController$State;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 19
    .line 20
    iget v2, v1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 21
    .line 22
    iget-wide v3, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    .line 23
    .line 24
    iget v6, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    .line 25
    .line 26
    int-to-float p0, v0

    .line 27
    const/high16 v0, 0x42c80000    # 100.0f

    .line 28
    .line 29
    div-float v7, p0, v0

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    move-object v1, v8

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/android/server/input/BatteryController$State;-><init>(IJZIF)V

    .line 34
    .line 35
    .line 36
    return-object v8

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final stopBluetoothMetadataMonitoring()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->removeMetadataListener(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    .line 34
    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DeviceId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 9
    .line 10
    iget v2, v1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", Name=\'"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, v1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 21
    .line 22
    sget-boolean v3, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v4, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    invoke-direct {v4, v5}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-string v5, "<none>"

    .line 36
    .line 37
    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "\', NativeBattery="

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", UEventListener="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    const-string v1, "added"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string/jumbo v1, "none"

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", BluetoothState="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method

.method public final updateBatteryStateFromNative(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    .line 2
    .line 3
    iget v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 10
    .line 11
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/android/server/input/BatteryController;->queryBatteryStateFromNative(IJZ)Lcom/android/server/input/BatteryController$State;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-wide p1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 16
    .line 17
    iget-wide v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 18
    .line 19
    iput-wide v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/hardware/input/IInputDeviceBatteryState;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput-wide p1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 30
    .line 31
    iget-wide v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 32
    .line 33
    iget-boolean p2, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    .line 34
    .line 35
    iget v3, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    .line 36
    .line 37
    iget p0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    .line 38
    .line 39
    iput p1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 40
    .line 41
    iput-wide v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 42
    .line 43
    iput-boolean p2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    .line 44
    .line 45
    iput v3, v0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    .line 46
    .line 47
    iput p0, v0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final updateBluetoothMetadataState(J[BI)V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    if-eq p4, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x13

    .line 6
    .line 7
    if-eq p4, v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iput-wide p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    .line 11
    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    new-instance p1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x3

    .line 28
    :goto_0
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iput-wide p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    .line 36
    .line 37
    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    .line 39
    .line 40
    if-eqz p3, :cond_4

    .line 41
    .line 42
    :try_start_0
    new-instance p1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    sget-boolean p1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p2, "Failed to parse bluetooth METADATA_MAIN_BATTERY with value \'"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p2, Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p2, "\' for device "

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p1, "BatteryController"

    .line 86
    .line 87
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    return-void
.end method
