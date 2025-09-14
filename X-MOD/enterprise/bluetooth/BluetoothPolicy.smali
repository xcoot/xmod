.class public final Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.super Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public isCacheUpdated:Z

.field public mCacheIsBluetoothLogEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public final mLogQueue:Ljava/util/concurrent/BlockingQueue;

.field public final mProfileMap:Ljava/util/Map;

.field public final mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

.field public final mReceiver:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;

.field public mRestart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 12
    new-instance v1, Ljava/util/HashMap;

    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    .line 19
    new-instance v2, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, v3, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 25
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 27
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    invoke-direct {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    .line 38
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 40
    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 46
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 51
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x2

    .line 55
    invoke-virtual {p1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 58
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 60
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 65
    new-instance v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;I)V

    .line 71
    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 73
    new-instance v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;I)V

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 81
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 83
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 88
    const/4 p0, 0x1

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object p0

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    .line 95
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object p1

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    .line 107
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v0, 0x10

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v0

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    .line 121
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/4 v2, 0x4

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v2

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    .line 134
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v3, 0x8

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v3

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    .line 148
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v4, 0x20

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v4

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    .line 162
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v5, 0x40

    .line 170
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v5

    .line 174
    new-instance v6, Ljava/util/ArrayList;

    .line 176
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/16 v6, 0x80

    .line 184
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    move-result-object v6

    .line 188
    new-instance v7, Ljava/util/ArrayList;

    .line 190
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/16 v7, 0x100

    .line 198
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    move-result-object v7

    .line 202
    new-instance v8, Ljava/util/ArrayList;

    .line 204
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/16 v8, 0x200

    .line 212
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v8

    .line 216
    new-instance v9, Ljava/util/ArrayList;

    .line 218
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    move-result-object v9

    .line 228
    check-cast v9, Ljava/util/List;

    .line 230
    const-string v10, "00001108-0000-1000-8000-00805F9B34FB"

    .line 232
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    move-result-object p0

    .line 239
    check-cast p0, Ljava/util/List;

    .line 241
    const-string v9, "00001112-0000-1000-8000-00805F9B34FB"

    .line 243
    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-result-object p0

    .line 250
    check-cast p0, Ljava/util/List;

    .line 252
    const-string v9, "0000111E-0000-1000-8000-00805F9B34FB"

    .line 254
    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    move-result-object p0

    .line 261
    check-cast p0, Ljava/util/List;

    .line 263
    const-string p1, "0000111F-0000-1000-8000-00805F9B34FB"

    .line 265
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-result-object p0

    .line 272
    check-cast p0, Ljava/util/List;

    .line 274
    const-string p1, "0000110E-0000-1000-8000-00805F9B34FB"

    .line 276
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    move-result-object p0

    .line 283
    check-cast p0, Ljava/util/List;

    .line 285
    const-string p1, "0000110C-0000-1000-8000-00805F9B34FB"

    .line 287
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    move-result-object p0

    .line 294
    check-cast p0, Ljava/util/List;

    .line 296
    const-string p1, "0000112f-0000-1000-8000-00805F9B34FB"

    .line 298
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-result-object p0

    .line 305
    check-cast p0, Ljava/util/List;

    .line 307
    const-string p1, "00001130-0000-1000-8000-00805f9b34fb"

    .line 309
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    move-result-object p0

    .line 316
    check-cast p0, Ljava/util/List;

    .line 318
    const-string p1, "0000110A-0000-1000-8000-00805F9B34FB"

    .line 320
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-result-object p0

    .line 327
    check-cast p0, Ljava/util/List;

    .line 329
    const-string p1, "0000110B-0000-1000-8000-00805F9B34FB"

    .line 331
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    move-result-object p0

    .line 338
    check-cast p0, Ljava/util/List;

    .line 340
    const-string p1, "0000110D-0000-1000-8000-00805F9B34FB"

    .line 342
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    move-result-object p0

    .line 349
    check-cast p0, Ljava/util/List;

    .line 351
    const-string p1, "00001103-0000-1000-8000-00805f9b34fb"

    .line 353
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    move-result-object p0

    .line 360
    check-cast p0, Ljava/util/List;

    .line 362
    const-string p1, "00001106-0000-1000-8000-00805f9b34fb"

    .line 364
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    move-result-object p0

    .line 371
    check-cast p0, Ljava/util/List;

    .line 373
    const-string p1, "00001101-0000-1000-8000-00805f9b34fb"

    .line 375
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-result-object p0

    .line 382
    check-cast p0, Ljava/util/List;

    .line 384
    const-string p1, "0000112D-0000-1000-8000-00805F9B34FB"

    .line 386
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    move-result-object p0

    .line 393
    check-cast p0, Ljava/util/List;

    .line 395
    const-string p1, "00001122-0000-1000-8000-00805f9b34fb"

    .line 397
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method public static auditLogMessage(IIIZ)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_9

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_8

    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_7

    .line 10
    const/16 v0, 0x8

    .line 12
    if-eq p1, v0, :cond_6

    .line 14
    const/16 v0, 0x10

    .line 16
    if-eq p1, v0, :cond_5

    .line 18
    const/16 v0, 0x20

    .line 20
    if-eq p1, v0, :cond_4

    .line 22
    const/16 v0, 0x40

    .line 24
    if-eq p1, v0, :cond_3

    .line 26
    const/16 v0, 0x80

    .line 28
    if-eq p1, v0, :cond_2

    .line 30
    const/16 v0, 0x100

    .line 32
    if-eq p1, v0, :cond_1

    .line 34
    const/16 v0, 0x200

    .line 36
    if-eq p1, v0, :cond_0

    .line 38
    const-string v0, ""

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "BPP"

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "SAP"

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string v0, "SPP"

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "FTP"

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    const-string v0, "DUN"

    .line 55
    goto :goto_0

    .line 56
    :cond_5
    const-string v0, "AVRCP"

    .line 58
    goto :goto_0

    .line 59
    :cond_6
    const-string v0, "A2DP"

    .line 61
    goto :goto_0

    .line 62
    :cond_7
    const-string v0, "PBAP"

    .line 64
    goto :goto_0

    .line 65
    :cond_8
    const-string v0, "HFP"

    .line 67
    goto :goto_0

    .line 68
    :cond_9
    const-string v0, "HSP"

    .line 70
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 73
    move-result v4

    .line 74
    if-eqz p3, :cond_a

    .line 76
    const-string p3, "Admin %d has allowed %s bluetooth profile."

    .line 78
    goto :goto_1

    .line 79
    :cond_a
    const-string p3, "Admin %d has blocked %s bluetooth profile."

    .line 81
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_b

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v0

    .line 95
    :cond_b
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object v6

    .line 103
    const/4 v3, 0x1

    .line 104
    const-string v5, "BluetoothPolicy"

    .line 106
    const/4 v1, 0x5

    .line 107
    const/4 v2, 0x1

    .line 108
    move v7, p2

    .line 109
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public static disableDesktopConnectivity()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 31
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 40
    move-result v4

    .line 41
    const/16 v5, 0x100

    .line 43
    if-ne v4, v5, :cond_0

    .line 45
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    .line 48
    move-result v4

    .line 49
    const-string v5, "BluetoothPolicyService"

    .line 51
    if-eqz v4, :cond_1

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    const-string v6, "Unpair this bluetooth computer(connected) : "

    .line 57
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    const-string v6, "Keep this bluetooth computer(not connected) : "

    .line 82
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    return-void
.end method

.method public static showProfileBlockedToast(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_9

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_8

    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_7

    .line 10
    const/16 v0, 0x8

    .line 12
    if-eq p0, v0, :cond_6

    .line 14
    const/16 v0, 0x10

    .line 16
    if-eq p0, v0, :cond_5

    .line 18
    const/16 v0, 0x20

    .line 20
    if-eq p0, v0, :cond_4

    .line 22
    const/16 v0, 0x40

    .line 24
    if-eq p0, v0, :cond_3

    .line 26
    const/16 v0, 0x80

    .line 28
    if-eq p0, v0, :cond_2

    .line 30
    const/16 v0, 0x100

    .line 32
    if-eq p0, v0, :cond_1

    .line 34
    const/16 v0, 0x200

    .line 36
    if-eq p0, v0, :cond_0

    .line 38
    return-void

    .line 39
    :cond_0
    const p0, 0x104024a

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const p0, 0x1040256

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const p0, 0x1040259

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const p0, 0x104024f

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const p0, 0x104024e

    .line 58
    goto :goto_0

    .line 59
    :cond_5
    const p0, 0x1040249

    .line 62
    goto :goto_0

    .line 63
    :cond_6
    const p0, 0x1040247

    .line 66
    goto :goto_0

    .line 67
    :cond_7
    const p0, 0x1040254

    .line 70
    goto :goto_0

    .line 71
    :cond_8
    const p0, 0x1040250

    .line 74
    goto :goto_0

    .line 75
    :cond_9
    const p0, 0x1040251

    .line 78
    :goto_0
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 81
    return-void
.end method

.method public static translateList(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_2

    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/samsung/android/knox/ControlInfo;

    .line 30
    iget-object v2, v1, Lcom/samsung/android/knox/ControlInfo;->entries:Ljava/util/List;

    .line 32
    if-eqz v2, :cond_0

    .line 34
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v2, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;

    .line 43
    invoke-direct {v2}, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;-><init>()V

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v3, v2, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;->entries:Ljava/util/List;

    .line 53
    iget-object v4, v1, Lcom/samsung/android/knox/ControlInfo;->adminPackageName:Ljava/lang/String;

    .line 55
    iput-object v4, v2, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;->adminPackageName:Ljava/lang/String;

    .line 57
    iget-object v1, v1, Lcom/samsung/android/knox/ControlInfo;->entries:Ljava/util/List;

    .line 59
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final activateBluetoothDeviceRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string v1, "activateBluetoothDeviceRestriction"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v7

    .line 18
    const/4 p1, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 21
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 24
    move-result v1

    .line 25
    const/4 v9, 0x1

    .line 26
    if-eq p2, v1, :cond_0

    .line 28
    move v10, v9

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v10, p1

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    const-string v2, "BLUETOOTH"

    .line 35
    const-string/jumbo v6, "devicePolicyEnabled"

    .line 38
    const/4 v5, 0x0

    .line 39
    move v4, p2

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 43
    move-result p1

    .line 44
    if-ne p1, v9, :cond_1

    .line 46
    if-eqz v10, :cond_1

    .line 48
    iget-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 50
    invoke-virtual {p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    return p1
.end method

.method public final activateBluetoothUUIDRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string v1, "activateBluetoothUUIDRestriction"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v7

    .line 18
    const/4 p1, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 21
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 24
    move-result v1

    .line 25
    const/4 v9, 0x1

    .line 26
    if-eq p2, v1, :cond_0

    .line 28
    move v10, v9

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v10, p1

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    const-string v2, "BLUETOOTH"

    .line 35
    const-string/jumbo v6, "profilePolicyEnabled"

    .line 38
    const/4 v5, 0x0

    .line 39
    move v4, p2

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 43
    move-result p1

    .line 44
    if-ne p1, v9, :cond_1

    .line 46
    if-eqz v10, :cond_1

    .line 48
    iget-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 50
    invoke-virtual {p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    return p1
.end method

.method public final addBluetoothDevicesToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string v1, "addDevicesToBlackList"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    if-eqz p2, :cond_2

    .line 16
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide v0

    .line 27
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 29
    const-string/jumbo v3, "black"

    .line 32
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToList(ILjava/lang/String;Ljava/util/List;)Z

    .line 35
    move-result p2

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne p2, v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 41
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 50
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return p2

    .line 54
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public final addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string v1, "addDevicesToWhiteList"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    if-eqz p2, :cond_2

    .line 16
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide v0

    .line 27
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 29
    const-string/jumbo v3, "white"

    .line 32
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToList(ILjava/lang/String;Ljava/util/List;)Z

    .line 35
    move-result p2

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne p2, v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 41
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 50
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return p2

    .line 54
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public final addBluetoothUUIDsToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string v1, "addProfilesToBlackList"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    if-eqz p2, :cond_2

    .line 16
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide v0

    .line 27
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 29
    const-string/jumbo v3, "black"

    .line 32
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToList(ILjava/lang/String;Ljava/util/List;)Z

    .line 35
    move-result p2

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne p2, v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 41
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 50
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return p2

    .line 54
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public final addBluetoothUUIDsToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string v1, "addProfilesToWhiteList"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    if-eqz p2, :cond_2

    .line 16
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide v0

    .line 27
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 29
    const-string/jumbo v3, "white"

    .line 32
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToList(ILjava/lang/String;Ljava/util/List;)Z

    .line 35
    move-result p2

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne p2, v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 41
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 50
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return p2

    .line 54
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public final allowBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    const-string v3, "BLUETOOTH"

    .line 38
    const-string v4, "BluetoothPolicyService"

    .line 40
    const/4 v5, 0x0

    .line 41
    if-nez p2, :cond_0

    .line 43
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 45
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 47
    const-string/jumbo v8, "bluetoothEnabled"

    .line 50
    invoke-virtual {v6, v7, v5, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 53
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    move v10, v6

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v6

    .line 57
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move v10, v2

    .line 65
    :goto_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 69
    const-string v8, "BLUETOOTH"

    .line 71
    const-string v12, "allowBluetoothRestore"

    .line 73
    const/4 v11, 0x0

    .line 74
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 77
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 79
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 81
    const-string v8, "allowBluetoothRestore"

    .line 83
    invoke-virtual {v6, v7, v5, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 86
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_1
    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->allowBluetoothForBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 101
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->allowBluetoothForBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 107
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 109
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 111
    const/4 v10, 0x0

    .line 112
    const-string v7, "BLUETOOTH"

    .line 114
    const-string v11, "allowBLE"

    .line 116
    move v9, p2

    .line 117
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 120
    move-result p0

    .line 121
    if-nez p2, :cond_3

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 126
    move-result-wide p1

    .line 127
    if-eqz v0, :cond_2

    .line 129
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    .line 132
    goto :goto_2

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    goto :goto_3

    .line 135
    :cond_2
    :goto_2
    const-string/jumbo v0, "ble_scan_always_enabled"

    .line 138
    invoke-static {v1, v0, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    goto :goto_4

    .line 145
    :goto_3
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    throw p0

    .line 149
    :cond_3
    :goto_4
    move v5, p0

    .line 150
    goto :goto_5

    .line 151
    :cond_4
    const-string p0, "allowBLE was failed"

    .line 153
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_5
    return v5
.end method

.method public final allowBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 8
    move-result v0

    .line 9
    const-string v1, "BluetoothPolicyService"

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    const-string v4, "BLUETOOTH"

    .line 22
    const-string v5, "allowBLE"

    .line 24
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    const-string/jumbo v3, "getAdminUidForBLE - "

    .line 31
    invoke-static {v0, v3, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    if-ne v0, v3, :cond_0

    .line 38
    const-string/jumbo p0, "failed to allowBluetooth due to BLE policy"

    .line 41
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v2

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 48
    move-result v0

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    move-result-wide v3

    .line 53
    if-nez p2, :cond_2

    .line 55
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 62
    move-result v6

    .line 63
    const/16 v7, 0xc

    .line 65
    if-ne v6, v7, :cond_1

    .line 67
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_3

    .line 73
    :catch_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 78
    move-result v5

    .line 79
    const/16 v6, 0xb

    .line 81
    if-ne v5, v6, :cond_2

    .line 83
    new-instance v5, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-direct {v5, p0, v6}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;I)V

    .line 89
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 92
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 94
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 96
    const-string v6, "BLUETOOTH"

    .line 98
    const-string/jumbo v10, "bluetoothEnabled"

    .line 101
    const/4 v9, 0x0

    .line 102
    move v8, p2

    .line 103
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_3

    .line 109
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 112
    move-result v9

    .line 113
    const-string v10, "BluetoothPolicy"

    .line 115
    const-string v6, "Admin %d has changed allow bluetooth to %s"

    .line 117
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v7

    .line 123
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    move-result-object p2

    .line 127
    filled-new-array {v7, p2}, [Ljava/lang/Object;

    .line 130
    move-result-object p2

    .line 131
    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    move-result-object v11

    .line 135
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 137
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 140
    move-result v12

    .line 141
    const/4 v7, 0x1

    .line 142
    const/4 v8, 0x1

    .line 143
    const/4 v6, 0x5

    .line 144
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    .line 150
    move-result p1

    .line 151
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    move v2, v5

    .line 158
    goto :goto_2

    .line 159
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 163
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    :goto_2
    return v2

    .line 170
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    throw p0
.end method

.method public final allowBluetoothForBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez p2, :cond_1

    .line 12
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 19
    move-result v5

    .line 20
    const/16 v6, 0xc

    .line 22
    if-ne v5, v6, :cond_0

    .line 24
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_3

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 35
    move-result v4

    .line 36
    const/16 v5, 0xb

    .line 38
    if-ne v4, v5, :cond_1

    .line 40
    new-instance v4, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;I)V

    .line 46
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 49
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 53
    const-string v5, "BLUETOOTH"

    .line 55
    const-string/jumbo v9, "bluetoothEnabled"

    .line 58
    const/4 v8, 0x0

    .line 59
    move v7, p2

    .line 60
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 66
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 69
    move-result v8

    .line 70
    const-string v9, "BluetoothPolicy"

    .line 72
    const-string v5, "Admin %d has changed allow bluetooth to %s"

    .line 74
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 76
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v6

    .line 80
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    move-result-object p2

    .line 84
    filled-new-array {v6, p2}, [Ljava/lang/Object;

    .line 87
    move-result-object p2

    .line 88
    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    move-result-object v10

    .line 92
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 94
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 97
    move-result v11

    .line 98
    const/4 v6, 0x1

    .line 99
    const/4 v7, 0x1

    .line 100
    const/4 v5, 0x5

    .line 101
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    .line 107
    move-result p1

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    move v3, v4

    .line 115
    goto :goto_2

    .line 116
    :goto_1
    :try_start_1
    const-string p1, "BluetoothPolicyService"

    .line 118
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 122
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    :goto_2
    return v3

    .line 129
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    throw p0
.end method

.method public final allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const-string v1, "BLUETOOTH"

    .line 11
    const-string v5, "allowCallerID"

    .line 13
    const/4 v4, 0x0

    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string p1, "BluetoothPolicyService"

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final allowOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "allowOutgoingCalls = "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BluetoothPolicyService"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v2

    .line 28
    const/4 v0, 0x0

    .line 29
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    const-string v5, "BLUETOOTH"

    .line 35
    const-string v9, "allowOutgoingCalls"

    .line 37
    const/4 v8, 0x0

    .line 38
    move v7, p2

    .line 39
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 42
    move-result v0

    .line 43
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 46
    move-result-object p1

    .line 47
    if-eqz v0, :cond_0

    .line 49
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_0

    .line 57
    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    return v0
.end method

.method public final applyDevicePolicy()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "BluetoothPolicyService"

    .line 9
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 33
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    move-object v4, p0

    .line 38
    check-cast v4, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 46
    const-string v5, "*"

    .line 48
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string/jumbo v5, "device.removeBond() : "

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 82
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    return-void
.end method

.method public final bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v0, "on server bluetoothLoglogConnectionChanged ["

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v0, "] "

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string v0, "BluetoothPolicyService"

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 37
    const-string p1, "["

    .line 39
    const-string v0, "]\n"

    .line 41
    invoke-static {p1, p2, v0, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    :goto_0
    return p0
.end method

.method public final clearBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "clearDevicesFromBlackList"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 21
    const-string/jumbo v3, "black"

    .line 24
    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v2, v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 33
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 42
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    return v2
.end method

.method public final clearBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "clearDevicesFromWhiteList"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 21
    const-string/jumbo v3, "white"

    .line 24
    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v2, v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 33
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 42
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    return v2
.end method

.method public final clearBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "clearProfilesFromBlackList"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 21
    const-string/jumbo v3, "black"

    .line 24
    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v2, v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 33
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 42
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    return v2
.end method

.method public final clearBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "clearProfilesFromWhiteList"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 21
    const-string/jumbo v3, "white"

    .line 24
    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v2, v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 33
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 42
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    return v2
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    iget-object v2, v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 6
    const-string v3, "android.permission.DUMP"

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 14
    const-string v0, "Permission Denial: can\'t dump SecurityPolicy"

    .line 16
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 22
    const-string/jumbo v13, "profileSettings"

    .line 25
    const-string/jumbo v14, "profilePolicyEnabled"

    .line 28
    const-string v2, "adminUid"

    .line 30
    const-string v3, "allowCallerID"

    .line 32
    const-string v4, "allowDataTransfer"

    .line 34
    const-string v5, "allowOutgoingCalls"

    .line 36
    const-string/jumbo v6, "desktopConnectivityEnabled"

    .line 39
    const-string/jumbo v7, "devicePolicyEnabled"

    .line 42
    const-string/jumbo v8, "discoverableModeEnabled"

    .line 45
    const-string/jumbo v9, "bluetoothEnabled"

    .line 48
    const-string/jumbo v10, "limitedDiscoverableEnabled"

    .line 51
    const-string/jumbo v11, "bluetoothLogEnabled"

    .line 54
    const-string/jumbo v12, "pairingEnabled"

    .line 57
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    const/4 v3, 0x0

    .line 62
    const-string v4, "BLUETOOTH"

    .line 64
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public final enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getAllBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "getAllDevicesBlackLists"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    const-string/jumbo p1, "black"

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-object p0
.end method

.method public final getAllBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "getAllDevicesWhiteLists"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    const-string/jumbo p1, "white"

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-object p0
.end method

.method public final getAllBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "getAllProfilesBlackLists"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    const-string/jumbo p1, "black"

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-object p0
.end method

.method public final getAllBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "getAllProfilesWhiteLists"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    const-string/jumbo p1, "white"

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-object p0
.end method

.method public final getAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    .line 1
    const-string/jumbo p1, "getAllowBluetoothDataTransfer - showMsg: "

    .line 4
    const-string v0, "BluetoothPolicyService"

    .line 6
    invoke-static {p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    const-string p1, "BLUETOOTH"

    .line 13
    const-string v0, "allowDataTransfer"

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p0

    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x1

    .line 44
    :goto_0
    if-eqz p2, :cond_2

    .line 46
    if-nez p1, :cond_2

    .line 48
    const p0, 0x104024b

    .line 51
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 54
    :cond_2
    return p1
.end method

.method public final getBluetoothLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 6

    .line 1
    const-string/jumbo v0, "getBluetoothLog()"

    .line 4
    const-string v1, "BluetoothPolicyService"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    const-string/jumbo p1, "time"

    .line 15
    const-string/jumbo v0, "log"

    .line 18
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    const-string v4, "BluetoothLogTable"

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p0, v4, v5, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 35
    move-result-object p0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v4, "getBluetoothLog() - cvList: "

    .line 41
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p0

    .line 58
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/content/ContentValues;

    .line 70
    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_0

    .line 76
    const-string v5, ":"

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v4

    .line 92
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v5, "getBluetoothLog() - report: "

    .line 100
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo p1, "getBluetoothLog() - reportList: "

    .line 119
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v3
.end method

.method public final getBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    .line 1
    const-string p1, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v0, "getBluetoothLogEnabled(true)"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-string/jumbo v0, "bluetoothLogEnabled"

    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const-string/jumbo v2, "getBluetoothLogEnabled - uid: "

    .line 19
    const/4 v3, -0x1

    .line 20
    invoke-static {v3, v2, p1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    const/4 v2, 0x0

    .line 26
    const-string v3, "BLUETOOTH"

    .line 28
    invoke-virtual {p0, v2, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v3, "getBluetoothLogEnabled - cvList: "

    .line 37
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    check-cast p0, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p0

    .line 56
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/content/ContentValues;

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v4, "getBluetoothLogEnabled - cv: "

    .line 73
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    const-string/jumbo v3, "true"

    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_0

    .line 99
    const/4 v2, 0x1

    .line 100
    :cond_1
    const-string/jumbo p0, "getBluetoothLogEnabled - ret: "

    .line 103
    invoke-static {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    return v2
.end method

.method public final getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final getEffectiveBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "getEffectiveBluetoothDevicesBlackLists"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    return-object p0
.end method

.method public final getEffectiveBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "getEffectiveBluetoothDevicesWhiteLists"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    iget-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->updateEffectivePolicy()V

    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEffectiveWhitelist:Ljava/util/List;

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    return-object p0
.end method

.method public final getEffectiveBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "getEffectiveBluetoothUUIDsBlackLists"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    return-object p0
.end method

.method public final getEffectiveBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "getEffectiveBluetoothUUIDsWhiteLists"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    iget-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->updateEffectivePolicy()V

    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEffectiveWhitelist:Ljava/util/List;

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    return-object p0
.end method

.method public final isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "BLUETOOTH"

    .line 5
    const-string v0, "allowBLE"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    return p1
.end method

.method public final isBluetoothDeviceAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    .line 15
    move-result p0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    :goto_1
    return p0
.end method

.method public final isBluetoothDeviceRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "isBluetoothDeviceRestrictionActive"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 23
    move-result p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    return p0
.end method

.method public final isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public final isBluetoothEnabled(Z)Z
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    const-string v0, "BLUETOOTH"

    const-string/jumbo v2, "bluetoothEnabled"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 7
    :goto_1
    const-string/jumbo p0, "isBluetoothEnabled : "

    const-string v0, "BluetoothPolicyService"

    .line 8
    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    const p0, 0x1040255

    .line 9
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_4
    return v1
.end method

.method public final isBluetoothEnabledWithMsg(Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 8
    move-result p1

    .line 9
    iput-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 14
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 16
    return p0
.end method

.method public final isBluetoothUUIDAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBluetoothUUIDRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "isBluetoothUUIDRestrictionActive"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 18
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 23
    move-result p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    return p0
.end method

.method public final isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4
    const-string v0, "BLUETOOTH"

    .line 6
    const-string v1, "allowCallerID"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-nez v0, :cond_0

    .line 35
    move p1, v0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string v0, "BluetoothPolicyService"

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    :goto_0
    return p1
.end method

.method public final isDesktopConnectivityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public final isDesktopConnectivityEnabled(Z)Z
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "BLUETOOTH"

    const-string/jumbo v1, "desktopConnectivityEnabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 5
    :goto_0
    const-string/jumbo p0, "isDesktopConnectivityEnabled : "

    const-string v1, "BluetoothPolicyService"

    .line 6
    invoke-static {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    const p0, 0x104024c

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2
    return v0
.end method

.method public final isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "BLUETOOTH"

    .line 5
    const-string/jumbo v0, "discoverableModeEnabled"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    :goto_0
    const-string/jumbo p0, "isDiscoverableEnabled : "

    .line 40
    const-string v0, "BluetoothPolicyService"

    .line 42
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    return p1
.end method

.method public final isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    const-string p1, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v0, "isLimitedDiscoverableEnabled "

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    const-string v0, "BLUETOOTH"

    .line 13
    const-string/jumbo v1, "limitedDiscoverableEnabled"

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x1

    .line 45
    :goto_0
    const-string/jumbo p0, "isLimitedDiscoverableEnabled ret:"

    .line 48
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    return v0
.end method

.method public final isOutgoingCallsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isOutgoingCallsAllowed(Z)Z
    .locals 3

    .line 2
    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "isPairingEnabled "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4
    const-string v0, "BLUETOOTH"

    const-string v1, "allowOutgoingCalls"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    const p0, 0x1040252

    .line 6
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2
    return v0
.end method

.method public final isPairingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isPairingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public final isPairingEnabled(Z)Z
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "BLUETOOTH"

    const-string/jumbo v1, "pairingEnabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 5
    :goto_0
    const-string/jumbo p0, "isPairingEnabled "

    const-string v1, "BluetoothPolicyService"

    .line 6
    invoke-static {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    const p0, 0x1040253

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2
    return v0
.end method

.method public final isProfileEnabled(I)Z
    .locals 5

    .line 3
    const-string v0, "BluetoothPolicyService"

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "BLUETOOTH"

    const-string/jumbo v3, "profileSettings"

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, p1

    if-eq p1, v2, :cond_0

    move v1, v4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 10
    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :catch_1
    const-string/jumbo p0, "isProfileEnabled() failed: INVALID PARAMETER INPUT"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public final isProfileEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result p0

    return p0
.end method

.method public final isProfileEnabledInternal(IZ)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "BluetoothPolicyService"

    .line 4
    if-lez p1, :cond_3

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(I)Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_1

    .line 16
    if-eqz p2, :cond_0

    .line 18
    invoke-static {p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :goto_0
    return v3

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v4

    .line 31
    check-cast v2, Ljava/util/HashMap;

    .line 33
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/List;

    .line 39
    move v4, v3

    .line 40
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    move-result v5

    .line 44
    if-ge v4, v5, :cond_4

    .line 46
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Ljava/lang/String;

    .line 52
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 54
    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_2

    .line 60
    move v0, v3

    .line 61
    goto :goto_3

    .line 62
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 67
    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    .line 70
    throw p0
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_3

    .line 79
    :catch_1
    const-string/jumbo p0, "isProfileEnabledInternal() failed: INVALID PARAMETER INPUT"

    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    .line 87
    if-nez v0, :cond_5

    .line 89
    invoke-static {p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    .line 92
    :cond_5
    return v0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onAdminRemoved - uid: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "BluetoothPolicyService"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v0, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 27
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 30
    move-result p1

    .line 31
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 33
    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()V

    .line 36
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()V

    .line 41
    iput-boolean v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_0

    .line 50
    const-string/jumbo v3, "onAdminRemoved - Clean log"

    .line 53
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 58
    const-string v3, "BluetoothLogTable"

    .line 60
    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 63
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 66
    move-result v0

    .line 67
    if-ne p1, v0, :cond_3

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x8

    .line 87
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 90
    move-result v0

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move v0, v2

    .line 93
    :goto_0
    if-nez v0, :cond_2

    .line 95
    const/4 v2, 0x1

    .line 96
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V

    .line 99
    :cond_3
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "removeDevicesFromBlackList"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    if-eqz p2, :cond_2

    .line 17
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 30
    const-string/jumbo v3, "black"

    .line 33
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromList(ILjava/lang/String;Ljava/util/List;)Z

    .line 36
    move-result p2

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne p2, v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 42
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 51
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    return p2

    .line 55
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "removeDevicesFromWhiteList"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    if-eqz p2, :cond_2

    .line 17
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 30
    const-string/jumbo v3, "white"

    .line 33
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromList(ILjava/lang/String;Ljava/util/List;)Z

    .line 36
    move-result p2

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne p2, v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 42
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 51
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    return p2

    .line 55
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final removeBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "removeProfilesFromBlackList"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    if-eqz p2, :cond_2

    .line 17
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 30
    const-string/jumbo v3, "black"

    .line 33
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromList(ILjava/lang/String;Ljava/util/List;)Z

    .line 36
    move-result p2

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne p2, v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 42
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 51
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    return p2

    .line 55
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final removeBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "removeProfilesFromWhiteList"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    if-eqz p2, :cond_2

    .line 17
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 30
    const-string/jumbo v3, "white"

    .line 33
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromList(ILjava/lang/String;Ljava/util/List;)Z

    .line 36
    move-result p2

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne p2, v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 42
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 51
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    return p2

    .line 55
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final restartBluetooth()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 19
    :cond_0
    return-void
.end method

.method public final setAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setAllowBluetoothDataTransfer = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "BluetoothPolicyService"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v3, "BLUETOOTH"

    .line 39
    const-string v7, "allowDataTransfer"

    .line 41
    move v5, p2

    .line 42
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final setBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p2

    .line 5
    const-string v8, "BluetoothPolicyService"

    .line 7
    const-string/jumbo v9, "setBluetooth : "

    .line 10
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    move-result-object v10

    .line 14
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 17
    move-result v11

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v12

    .line 22
    const/4 v14, 0x0

    .line 23
    :try_start_0
    iget-object v2, v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    iget v4, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    const-string v3, "BLUETOOTH"

    .line 29
    const-string/jumbo v7, "bluetoothEnabled"

    .line 32
    const/4 v6, 0x0

    .line 33
    move/from16 v5, p2

    .line 35
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 57
    move-result-object v3

    .line 58
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v1, v14}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_3

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 77
    move-result v4

    .line 78
    const/16 v5, 0xc

    .line 80
    if-ne v4, v5, :cond_1

    .line 82
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 89
    move-result v3

    .line 90
    const/16 v4, 0xb

    .line 92
    if-ne v3, v4, :cond_2

    .line 94
    new-instance v3, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-direct {v3, v1, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;I)V

    .line 100
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 103
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 105
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 108
    move-result v18

    .line 109
    const-string v19, "BluetoothPolicy"

    .line 111
    const-string v3, "Admin %d has changed bluetooth enabled to %s"

    .line 113
    iget v4, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v4

    .line 119
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    move-result-object v0

    .line 123
    filled-new-array {v4, v0}, [Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object v20

    .line 131
    iget v0, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 133
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 136
    move-result v21

    .line 137
    const/16 v16, 0x1

    .line 139
    const/16 v17, 0x1

    .line 141
    const/4 v15, 0x5

    .line 142
    invoke-static/range {v15 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    goto :goto_2

    .line 149
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    move v2, v14

    .line 160
    :goto_2
    if-eqz v2, :cond_4

    .line 162
    invoke-virtual {v1, v14}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    .line 165
    move-result v0

    .line 166
    invoke-virtual {v1, v11, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V

    .line 169
    :cond_4
    return v2

    .line 170
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    throw v0
.end method

.method public final setBluetoothAllowedSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setBluetoothAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "BluetoothPolicyService"

    .line 23
    const-string/jumbo p2, "setBluetoothAllowedSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final setBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setBluetoothLogEnabled("

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "BluetoothPolicyService"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Landroid/content/ContentValues;

    .line 32
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string/jumbo v2, "bluetoothLogEnabled"

    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 47
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 49
    const-string v4, "BLUETOOTH"

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v2, v3, v5, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 55
    move-result v0

    .line 56
    if-nez p2, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_0

    .line 64
    const-string/jumbo p1, "setBluetoothLogEnabled - Clean log"

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    const/4 p2, 0x0

    .line 73
    const-string v2, "BluetoothLogTable"

    .line 75
    invoke-virtual {p1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 78
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 80
    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 82
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 85
    :cond_0
    const-string/jumbo p1, "setBluetoothLogEnabled - return = "

    .line 88
    invoke-static {p1, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    if-eqz v0, :cond_1

    .line 93
    iput-boolean v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 95
    :cond_1
    return v0
.end method

.method public final setDesktopConnectivityState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setDesktopConnectivityState = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "BluetoothPolicyService"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v2

    .line 29
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    const-string v5, "BLUETOOTH"

    .line 35
    const-string/jumbo v9, "desktopConnectivityEnabled"

    .line 38
    const/4 v8, 0x0

    .line 39
    move v7, p2

    .line 40
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 43
    move-result p0

    .line 44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 47
    move-result-object p1

    .line 48
    if-nez p2, :cond_0

    .line 50
    if-eqz p0, :cond_0

    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 60
    invoke-static {}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->disableDesktopConnectivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 p0, 0x0

    .line 73
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    return p0
.end method

.method public final setDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "setDiscoverableState : "

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v2

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 18
    const-string v5, "BLUETOOTH"

    .line 20
    const-string/jumbo v9, "discoverableModeEnabled"

    .line 23
    const/4 v8, 0x0

    .line 24
    move v7, p2

    .line 25
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 28
    move-result p0

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz p0, :cond_1

    .line 46
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 48
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 51
    move-result v1

    .line 52
    if-eqz p2, :cond_0

    .line 54
    const/16 p2, 0x1c

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/16 p2, 0x1d

    .line 59
    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p1

    .line 65
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p2, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_4

    .line 75
    :catch_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    goto :goto_3

    .line 81
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    const/4 p0, 0x0

    .line 92
    :goto_3
    return p0

    .line 93
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    throw p0
.end method

.method public final setLimitedDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    const-string v0, "BluetoothPolicyService"

    .line 3
    const-string/jumbo v1, "setLimitedDiscoverableState : "

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v2

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 18
    const-string v5, "BLUETOOTH"

    .line 20
    const-string/jumbo v9, "limitedDiscoverableEnabled"

    .line 23
    const/4 v8, 0x0

    .line 24
    move v7, p2

    .line 25
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 28
    move-result p0

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz p0, :cond_1

    .line 46
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 49
    move-result v7

    .line 50
    const-string v8, "BluetoothPolicy"

    .line 52
    if-eqz p2, :cond_0

    .line 54
    const-string p2, "Admin %d has enabled bluetooth limited discoverable state."

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_3

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    const-string p2, "Admin %d has disabled bluetooth limited discoverable state."

    .line 63
    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v1

    .line 69
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v9

    .line 77
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 79
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 82
    move-result v10

    .line 83
    const/4 v4, 0x5

    .line 84
    const/4 v5, 0x1

    .line 85
    const/4 v6, 0x1

    .line 86
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    goto :goto_2

    .line 93
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    const/4 p0, 0x0

    .line 104
    :goto_2
    return p0

    .line 105
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    throw p0
.end method

.method public final setPairingState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setPairingState = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "BluetoothPolicyService"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    const/4 v4, 0x0

    .line 30
    const-string v1, "BLUETOOTH"

    .line 32
    const-string/jumbo v5, "pairingEnabled"

    .line 35
    move v3, p2

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final setProfileState(Lcom/samsung/android/knox/ContextInfo;ZI)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setProfileState = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " state "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "BluetoothPolicyService"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 32
    move-result-object p1

    .line 33
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 35
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 38
    move-result p1

    .line 39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    move-result-wide v8

    .line 43
    const/4 v10, 0x0

    .line 44
    if-lez p3, :cond_2

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    const-string v3, "BLUETOOTH"

    .line 50
    const-string/jumbo v4, "profileSettings"

    .line 53
    invoke-virtual {v2, v0, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 56
    move-result v2
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_6

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_4

    .line 62
    :catch_1
    const v2, 0xffff

    .line 65
    :goto_0
    const/4 v3, 0x1

    .line 66
    if-ne v3, p2, :cond_0

    .line 68
    or-int/2addr v2, p3

    .line 69
    :goto_1
    move v5, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    not-int v3, p3

    .line 72
    and-int/2addr v2, v3

    .line 73
    goto :goto_1

    .line 74
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 76
    const-string v6, "BLUETOOTH"

    .line 78
    const-string/jumbo v7, "profileSettings"

    .line 81
    const/4 v4, 0x0

    .line 82
    move v3, v0

    .line 83
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 86
    move-result v10

    .line 87
    if-eqz v10, :cond_1

    .line 89
    invoke-static {v0, p3, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->auditLogMessage(IIIZ)V

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    goto :goto_5

    .line 99
    :cond_2
    :try_start_2
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 101
    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    .line 104
    throw p0
    :try_end_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :goto_4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    goto :goto_3

    .line 113
    :catch_2
    const-string/jumbo p0, "setProfileState() failed: INVALID PARAMETER INPUT"

    .line 116
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    goto :goto_3

    .line 120
    :goto_5
    return v10

    .line 121
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    throw p0
.end method

.method public final systemReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()V

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()V

    .line 11
    new-instance v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;I)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    return-void
.end method
