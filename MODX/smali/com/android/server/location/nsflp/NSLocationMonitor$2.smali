.class public final Lcom/android/server/location/nsflp/NSLocationMonitor$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 6
    return-void
.end method


# virtual methods
.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onNullBinding is called, "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const-string v0, "NSLocationMonitor"

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 23
    iget-object p1, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 28
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "Failed to register notification listener, "

    .line 4
    const-string v2, "NSLocationMonitor"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    const-string v4, "MonitorService is connected, "

    .line 10
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 28
    invoke-static {p2}, Landroid/location/INSLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationManager;

    .line 31
    move-result-object p2

    .line 32
    iput-object p2, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    .line 34
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 36
    iget-object v2, p2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    .line 38
    if-nez v2, :cond_0

    .line 40
    const-string p0, "NSLocationMonitor"

    .line 42
    const-string p2, "Failed to stub interface to MonitorService"

    .line 44
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto/16 :goto_7

    .line 52
    :cond_0
    :try_start_1
    invoke-interface {v2, p2}, Landroid/location/INSLocationManager;->setCallback(Landroid/location/INSLocationCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    :try_start_2
    const-string p2, "NSLocationMonitor"

    .line 58
    const-string v2, "Failed to set callback"

    .line 60
    invoke-static {p2, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 65
    iget-object v2, p2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 67
    iget-object p2, p2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    .line 69
    iget-object v3, v2, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    .line 71
    if-nez v3, :cond_1

    .line 73
    sget-object v3, Lcom/android/server/location/nsflp/NSLocationThread;->sInstance:Lcom/android/server/location/nsflp/NSLocationThread;

    .line 75
    const-class v3, Lcom/android/server/location/nsflp/NSLocationThread;

    .line 77
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationThread;->ensureThreadLocked()V

    .line 81
    sget-object v4, Lcom/android/server/location/nsflp/NSLocationThread;->sHandler:Landroid/os/Handler;

    .line 83
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :try_start_4
    iput-object v4, v2, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 89
    :try_start_6
    throw p0

    .line 90
    :cond_1
    :goto_1
    iput-object p2, v2, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 92
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 93
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 95
    iget-object p2, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 100
    move-result-wide v2

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance p2, Landroid/os/Bundle;

    .line 110
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 113
    const-string/jumbo v2, "systemRunning"

    .line 116
    iget-wide v3, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSystemRunningTime:J

    .line 118
    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 121
    iget-object v2, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    .line 123
    const-string/jumbo v3, "connectedHistory"

    .line 126
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 129
    iget-object v2, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    .line 131
    const-string/jumbo v3, "disconnectedHistory"

    .line 134
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 137
    iget-object v2, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 139
    check-cast v2, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 141
    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 143
    iget-object v2, v2, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mSuplAddress:Ljava/lang/String;

    .line 145
    if-eqz v2, :cond_2

    .line 147
    const-string/jumbo v3, "supl_hostname"

    .line 150
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    iget-object p1, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 155
    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->MONITOR_SERVICE_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 157
    invoke-virtual {p1, v2, p2}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 160
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 162
    iget-object p1, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 164
    iget-object p2, p1, Lcom/android/server/location/nsflp/NSConnectionHelper;->mBdmsgFormatMessage:Ljava/lang/String;

    .line 166
    if-eqz p2, :cond_3

    .line 168
    invoke-virtual {p1, p2}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onGnssEventUpdated(Ljava/lang/String;)V

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 173
    iget-object p2, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNotificationListener:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 175
    monitor-enter p2

    .line 176
    :try_start_7
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 178
    iget-boolean v2, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 180
    if-nez v2, :cond_4

    .line 182
    :try_start_8
    iget-object v2, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNotificationListener:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 184
    iget-object p1, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 186
    new-instance v3, Landroid/content/ComponentName;

    .line 188
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 190
    iget-object v4, v4, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 195
    move-result-object v4

    .line 196
    iget-object v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 198
    iget-object v5, v5, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 207
    move-result-object v5

    .line 208
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 214
    move-result v4

    .line 215
    invoke-virtual {v2, p1, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 218
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 220
    iput-boolean v0, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 222
    goto :goto_2

    .line 223
    :catchall_2
    move-exception p0

    .line 224
    goto/16 :goto_6

    .line 226
    :catch_1
    move-exception p1

    .line 227
    :try_start_9
    const-string v2, "NSLocationMonitor"

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object p1

    .line 245
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_4
    :goto_2
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 249
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 251
    const-string p1, "Initialize NetworkStateListener, count="

    .line 253
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    .line 255
    monitor-enter v1

    .line 256
    :try_start_a
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 258
    const-string/jumbo v2, "phone"

    .line 261
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    move-result-object p2

    .line 265
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 267
    const/4 v2, 0x0

    .line 268
    if-eqz p2, :cond_8

    .line 270
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 273
    move-result v3

    .line 274
    iput v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    .line 276
    if-lez v3, :cond_8

    .line 278
    const-string v3, "NSLocationMonitor"

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    iget p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    .line 287
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object p1

    .line 294
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    .line 299
    new-array v3, p1, [I

    .line 301
    iput-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    .line 303
    new-array p1, p1, [Landroid/telephony/PhoneStateListener;

    .line 305
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 307
    move p1, v2

    .line 308
    move v3, p1

    .line 309
    :goto_3
    iget v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    .line 311
    if-ge p1, v4, :cond_7

    .line 313
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    .line 316
    move-result-object v4

    .line 317
    if-nez v4, :cond_5

    .line 319
    const-string v4, "NSLocationMonitor"

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    const-string/jumbo v6, "subId is null from simSlot["

    .line 329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    const-string v6, "]"

    .line 337
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v5

    .line 344
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    goto :goto_4

    .line 348
    :catchall_3
    move-exception p0

    .line 349
    goto/16 :goto_5

    .line 351
    :cond_5
    array-length v5, v4

    .line 352
    if-nez v5, :cond_6

    .line 354
    const-string v4, "NSLocationMonitor"

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    const-string/jumbo v6, "subId is empty from simSlot["

    .line 364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const-string v6, "]"

    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object v5

    .line 379
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    goto :goto_4

    .line 383
    :cond_6
    const-string v3, "NSLocationMonitor"

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    .line 387
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    const-string/jumbo v6, "subIdTemp, "

    .line 393
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 399
    move-result-object v6

    .line 400
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    move-result-object v5

    .line 407
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    aget v3, v4, v2

    .line 412
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    .line 414
    aput v3, v4, p1

    .line 416
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 418
    new-instance v5, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;

    .line 420
    invoke-direct {v5, p0, v3}, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;I)V

    .line 423
    aput-object v5, v4, p1

    .line 425
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 427
    aget-object v4, v4, p1

    .line 429
    invoke-virtual {p2, v4, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 432
    const-string v4, "NSLocationMonitor"

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    .line 436
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    const-string/jumbo v6, "registerPhoneStateListener SimSlot="

    .line 442
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    const-string v6, ", subId="

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    move-result-object v3

    .line 460
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    move v3, v0

    .line 464
    :goto_4
    add-int/2addr p1, v0

    .line 465
    goto/16 :goto_3

    .line 467
    :cond_7
    move v2, v3

    .line 468
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    .line 470
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 473
    const-string/jumbo p2, "isInitialized"

    .line 476
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 481
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->SIM_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 483
    invoke-virtual {p2, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 486
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 488
    const-string/jumbo p2, "telephony_subscription_service"

    .line 491
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 494
    move-result-object p1

    .line 495
    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 497
    if-eqz p1, :cond_9

    .line 499
    const-string p2, "NSLocationMonitor"

    .line 501
    const-string v0, "Register SubscriptionChangedListener"

    .line 503
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 508
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSubscriptionListener:Lcom/android/server/location/nsflp/NSLocationMonitor$3;

    .line 510
    invoke-virtual {p1, p2, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 513
    :cond_9
    monitor-exit v1

    .line 514
    return-void

    .line 515
    :goto_5
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 516
    throw p0

    .line 517
    :goto_6
    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 518
    throw p0

    .line 519
    :goto_7
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 520
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8

    .line 1
    const-string v0, "Failed to unregister notification listener, "

    .line 3
    const-string v1, "NSLocationMonitor"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "MonitorService has unexpectedly disconnected, "

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 27
    const/4 v3, 0x0

    .line 28
    iput-object v3, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    .line 30
    iget-object v4, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 32
    iput-object v3, v4, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 34
    iput-object v3, v4, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 37
    iget-object v1, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    move-result-wide v4

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 52
    const/4 v2, 0x3

    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-virtual {v1, v2, v4}, Lcom/android/server/location/nsflp/NSLocationMonitor;->noteGpsOp(II)V

    .line 57
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 59
    iget-object v5, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNotificationListener:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 61
    monitor-enter v5

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 64
    iget-boolean v6, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-eqz v6, :cond_0

    .line 68
    :try_start_2
    iget-object v1, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNotificationListener:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 70
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 73
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 75
    iput-boolean v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_4

    .line 81
    :catch_0
    move-exception v1

    .line 82
    :try_start_3
    const-string v6, "NSLocationMonitor"

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 106
    iget-object v1, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    .line 108
    monitor-enter v1

    .line 109
    :try_start_4
    iget-object v5, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 111
    const-string/jumbo v6, "phone"

    .line 114
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 120
    if-eqz v5, :cond_3

    .line 122
    iget-object v6, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 124
    if-eqz v6, :cond_3

    .line 126
    move v6, v4

    .line 127
    :goto_1
    iget v7, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    .line 129
    if-ge v6, v7, :cond_2

    .line 131
    iget-object v7, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 133
    aget-object v7, v7, v6

    .line 135
    if-nez v7, :cond_1

    .line 137
    goto :goto_2

    .line 138
    :cond_1
    invoke-virtual {v5, v7, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 141
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 143
    goto :goto_1

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    goto :goto_3

    .line 146
    :cond_2
    iput v4, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    .line 148
    iput-object v3, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 150
    :cond_3
    iget-object v5, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 152
    const-string/jumbo v6, "telephony_subscription_service"

    .line 155
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    move-result-object v5

    .line 159
    check-cast v5, Landroid/telephony/SubscriptionManager;

    .line 161
    if-eqz v5, :cond_4

    .line 163
    iget-object v6, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSubscriptionListener:Lcom/android/server/location/nsflp/NSLocationMonitor$3;

    .line 165
    if-eqz v6, :cond_4

    .line 167
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 170
    iput-object v3, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    .line 172
    const-string v0, "NSLocationMonitor"

    .line 174
    const-string v3, "Unregister SubscriptionChangedListener"

    .line 176
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 182
    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;->SEVICE_DISCONNECT:Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 189
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 191
    invoke-virtual {v0, v4}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->notifyMotionPowerSaveModeChanged(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 196
    iget v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    .line 198
    if-lt v0, v2, :cond_5

    .line 200
    const-string v0, "NSLocationMonitor"

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    const-string v2, ""

    .line 206
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 211
    iget v2, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    const-string v2, " times disconnected, so stop "

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 233
    iget-object p1, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 238
    :cond_5
    return-void

    .line 239
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 240
    throw p0

    .line 241
    :goto_4
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    throw p0

    .line 243
    :catchall_2
    move-exception p0

    .line 244
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 245
    throw p0
.end method
