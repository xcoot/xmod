.class public final Lcom/samsung/accessory/manager/SAccessoryManager;
.super Lcom/samsung/accessory/manager/SAccessoryManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;


# static fields
.field public static final DBG:Z


# instance fields
.field public authState:Z

.field public isUsbReady:Z

.field public final mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

.field public final mAuthenticationRequsetReceiver:Lcom/samsung/accessory/manager/SAccessoryManager$4;

.field public final mBatteryEventReceiver:Lcom/samsung/accessory/manager/SAccessoryManager$4;

.field public final mContext:Landroid/content/Context;

.field public final mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

.field public final mIsFactory:Z

.field public final mLocalAuthenticator:Ljava/util/ArrayList;

.field public final mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

.field public final mSessions:Ljava/util/HashMap;

.field public final mUEventObserver:Lcom/samsung/accessory/manager/SAccessoryManager$3;

.field public mUsbpdIds:Ljava/lang/String;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final modelName:Ljava/lang/String;

.field public usbState:Z

.field public wirelesschargerState:Z


# direct methods
.method public static -$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 18
    .line 19
    instance-of v2, v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const-string v2, "Wireless Charger Connected = "

    .line 24
    .line 25
    const-string v3, "SAccessoryManager_SAccessoryManager"

    .line 26
    .line 27
    invoke-static {p1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-ne p1, v2, :cond_1

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onWirelessChargerConnected(Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x2

    .line 42
    if-ne p1, v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onWirelessChargerConnected(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 13

    .line 1
    const-string v0, "com.sec.feature.nfc_authentication"

    .line 2
    .line 3
    const-string v1, "com.sec.feature.usb_authentication"

    .line 4
    .line 5
    const-string v2, "feature check nfc: "

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    .line 12
    .line 13
    new-instance v4, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    .line 26
    .line 27
    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    .line 28
    .line 29
    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    .line 30
    .line 31
    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    .line 32
    .line 33
    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    .line 34
    .line 35
    const-string v5, "Samsung Mobile"

    .line 36
    .line 37
    iput-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v5, Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 40
    .line 41
    invoke-direct {v5, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    .line 42
    .line 43
    .line 44
    new-instance v6, Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 45
    .line 46
    invoke-direct {v6, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    .line 47
    .line 48
    .line 49
    iput-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 50
    .line 51
    new-instance v6, Lcom/samsung/accessory/manager/SAccessoryManager$3;

    .line 52
    .line 53
    invoke-direct {v6, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$3;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    .line 54
    .line 55
    .line 56
    new-instance v7, Lcom/samsung/accessory/manager/SAccessoryManager$4;

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-direct {v7, p0, v8}, Lcom/samsung/accessory/manager/SAccessoryManager$4;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    .line 60
    .line 61
    .line 62
    new-instance v8, Lcom/samsung/accessory/manager/SAccessoryManager$4;

    .line 63
    .line 64
    const/4 v9, 0x1

    .line 65
    invoke-direct {v8, p0, v9}, Lcom/samsung/accessory/manager/SAccessoryManager$4;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    .line 66
    .line 67
    .line 68
    const-string v9, "SAccessoryManager_SAccessoryManager"

    .line 69
    .line 70
    const-string v10, "SAccessoryManager starting up"

    .line 71
    .line 72
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    const-string/jumbo v10, "power"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Landroid/os/PowerManager;

    .line 85
    .line 86
    const/4 v11, 0x1

    .line 87
    invoke-virtual {v10, v11, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    iput-object v10, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    .line 93
    invoke-virtual {v10, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Landroid/os/HandlerThread;

    .line 97
    .line 98
    invoke-direct {v3, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 102
    .line 103
    .line 104
    new-instance v10, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-direct {v10, p0, v11}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V

    .line 111
    .line 112
    .line 113
    iput-object v10, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 114
    .line 115
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 116
    .line 117
    if-eqz v10, :cond_0

    .line 118
    .line 119
    iput-object v10, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    .line 120
    .line 121
    :cond_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    iput-boolean v10, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    .line 126
    .line 127
    sget-boolean v10, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    .line 128
    .line 129
    const/4 v11, 0x2

    .line 130
    if-eqz v10, :cond_1

    .line 131
    .line 132
    new-instance v10, Landroid/content/IntentFilter;

    .line 133
    .line 134
    const-string v12, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    .line 135
    .line 136
    invoke-direct {v10, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v7, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    :cond_1
    new-instance v7, Landroid/content/IntentFilter;

    .line 143
    .line 144
    const-string v10, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 145
    .line 146
    invoke-direct {v7, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v8, v7, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    if-eqz v7, :cond_6

    .line 157
    .line 158
    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-eqz v8, :cond_2

    .line 163
    .line 164
    new-instance v8, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-direct {v8, p1, v10, v5}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$1;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    const-string v8, "DEVPATH=/devices/virtual/sec/ccic"

    .line 177
    .line 178
    invoke-virtual {v6, v8}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-nez v6, :cond_3

    .line 186
    .line 187
    const-string v6, "com.sec.feature.nfc_authentication_cover"

    .line 188
    .line 189
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_4

    .line 194
    .line 195
    :cond_3
    new-instance v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 196
    .line 197
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-direct {v6, p1, p2, v8, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$1;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_4
    const-string p2, "com.sec.feature.wirelesscharger_authentication"

    .line 208
    .line 209
    invoke-virtual {v7, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_5

    .line 214
    .line 215
    new-instance p2, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 216
    .line 217
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-direct {p2, p1, v3, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$1;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string p2, ", usb: "

    .line 240
    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :catchall_0
    const-string/jumbo p1, "package manager error for check feature"

    .line 260
    .line 261
    .line 262
    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    :cond_6
    :goto_0
    new-instance p1, Lcom/samsung/accessory/manager/DetachCheck;

    .line 266
    .line 267
    iget-object p2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    .line 268
    .line 269
    invoke-direct {p1, p2}, Lcom/samsung/accessory/manager/DetachCheck;-><init>(Landroid/content/Context;)V

    .line 270
    .line 271
    .line 272
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    .line 273
    .line 274
    return-void
.end method


# virtual methods
.method public final attachUsbTypeC(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 18
    .line 19
    instance-of v2, v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "USB Type C attached, attached = "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "SAccessoryManager_SAccessoryManager"

    .line 38
    .line 39
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v4, "USB State "

    .line 45
    .line 46
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    .line 50
    .line 51
    invoke-static {v3, v2, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 52
    .line 53
    .line 54
    check-cast v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 55
    .line 56
    const/16 v2, 0xc8

    .line 57
    .line 58
    if-ne p1, v2, :cond_1

    .line 59
    .line 60
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    .line 61
    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-nez p1, :cond_0

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(Z)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p1, "Permission Denial: can\'t dump SAccessoryManager from from pid="

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", uid="

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " without permission android.permission.DUMP"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 67
    .line 68
    invoke-virtual {v1, p2}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->dump(Ljava/io/PrintWriter;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 73
    .line 74
    monitor-enter v0

    .line 75
    :try_start_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 96
    .line 97
    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    monitor-exit v0

    .line 104
    return-void

    .line 105
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method

.method public final handleAuthStartRequest(Landroid/os/Message;Z)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    const-string/jumbo v2, "package_name"

    .line 9
    .line 10
    .line 11
    const-string v3, ""

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "connectivity_type"

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v3, :cond_0

    .line 26
    .line 27
    :goto_0
    move v4, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v5, 0x2

    .line 30
    if-ne v0, v5, :cond_1

    .line 31
    .line 32
    const/16 v4, 0x8

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v5, 0x3

    .line 36
    if-ne v0, v5, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v5, 0x4

    .line 40
    if-ne v0, v5, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 44
    .line 45
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const/4 v6, 0x0

    .line 57
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_5

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-ne v7, v0, :cond_4

    .line 74
    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-ge v6, v4, :cond_7

    .line 82
    .line 83
    :try_start_2
    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    new-instance v4, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 91
    .line 92
    invoke-direct {v4, v3, v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 100
    .line 101
    iput-object p1, v4, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    goto :goto_6

    .line 106
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 107
    .line 108
    iput-object p1, v4, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 124
    :cond_7
    new-instance p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 125
    .line 126
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    .line 127
    .line 128
    .line 129
    const/16 v0, 0xb

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 132
    .line 133
    .line 134
    if-eqz p2, :cond_9

    .line 135
    .line 136
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p1, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 139
    .line 140
    if-eqz p1, :cond_8

    .line 141
    .line 142
    invoke-interface {p1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_8
    const-string p0, "SAccessoryManager_SAccessoryManager"

    .line 147
    .line 148
    const-string p1, "handleAuthStartRequest, callback is null!"

    .line 149
    .line 150
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    :cond_9
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    return-void

    .line 155
    :goto_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    :try_start_4
    throw p0

    .line 157
    :goto_6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    throw p0
.end method
