.class public final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string/jumbo v2, "isStationary = "

    .line 8
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 10
    if-eqz v3, :cond_0

    .line 12
    const-string v4, "DeviceIdleController"

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v6, "handleMessage("

    .line 19
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget v6, v1, Landroid/os/Message;->what:I

    .line 24
    const-string v7, ")"

    .line 26
    invoke-static {v5, v6, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    iget v4, v1, Landroid/os/Message;->what:I

    .line 31
    const v5, 0x84d8

    .line 34
    const v6, 0x84d6

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    packed-switch v4, :pswitch_data_0

    .line 43
    :pswitch_0
    goto/16 :goto_c

    .line 45
    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 47
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 49
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 51
    invoke-virtual {v0, v1, v7, v9, v7}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->onTempPowerSaveWhitelistChange(IILjava/lang/String;Z)V

    .line 54
    goto/16 :goto_c

    .line 56
    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 58
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 60
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 64
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 66
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 68
    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->onTempPowerSaveWhitelistChange(IILjava/lang/String;Z)V

    .line 71
    goto/16 :goto_c

    .line 73
    :pswitch_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 75
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 77
    if-ne v1, v8, :cond_1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move v8, v7

    .line 81
    :goto_0
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 83
    monitor-enter v3

    .line 84
    :try_start_0
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 86
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    .line 88
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 91
    move-result v1

    .line 92
    new-array v1, v1, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 94
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    check-cast v0, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 100
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    array-length v1, v0

    .line 102
    :goto_1
    if-ge v7, v1, :cond_13

    .line 104
    aget-object v3, v0, v7

    .line 106
    if-eqz v8, :cond_2

    .line 108
    invoke-interface {v3, v2}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppAdded(I)V

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    invoke-interface {v3, v2}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppRemoved(I)V

    .line 115
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw v0

    .line 121
    :pswitch_4
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    check-cast v0, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 125
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 127
    if-ne v1, v8, :cond_3

    .line 129
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->startMonitoring()V

    .line 132
    goto/16 :goto_c

    .line 134
    :cond_3
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->stopMonitoring()V

    .line 137
    goto/16 :goto_c

    .line 139
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 141
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 144
    goto/16 :goto_c

    .line 146
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    check-cast v1, Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 150
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 152
    monitor-enter v4

    .line 153
    :try_start_2
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 155
    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    .line 158
    move-result v3

    .line 159
    const-string v5, "DeviceIdleController"

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v2

    .line 173
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez v1, :cond_4

    .line 178
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 180
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 182
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 185
    move-result v2

    .line 186
    new-array v2, v2, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 188
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 191
    move-result-object v0

    .line 192
    move-object v9, v0

    .line 193
    check-cast v9, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 195
    goto :goto_3

    .line 196
    :catchall_1
    move-exception v0

    .line 197
    goto :goto_5

    .line 198
    :cond_4
    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    if-eqz v9, :cond_5

    .line 201
    array-length v0, v9

    .line 202
    :goto_4
    if-ge v7, v0, :cond_5

    .line 204
    aget-object v2, v9, v7

    .line 206
    invoke-interface {v2, v3}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    .line 209
    add-int/lit8 v7, v7, 0x1

    .line 211
    goto :goto_4

    .line 212
    :cond_5
    if-eqz v1, :cond_13

    .line 214
    invoke-interface {v1, v3}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    .line 217
    goto/16 :goto_c

    .line 219
    :goto_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    throw v0

    .line 221
    :pswitch_7
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 223
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 225
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    const-string v0, "Time to remove uid "

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 233
    move-result-wide v4

    .line 234
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 237
    move-result v6

    .line 238
    if-eqz v3, :cond_6

    .line 240
    const-string v7, "DeviceIdleController"

    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v9, "checkTempAppWhitelistTimeout: uid="

    .line 247
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    const-string v9, ", timeNow="

    .line 255
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object v8

    .line 265
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_6
    monitor-enter v2

    .line 269
    :try_start_4
    iget-object v7, v2, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 271
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 274
    move-result-object v7

    .line 275
    check-cast v7, Landroid/util/Pair;

    .line 277
    if-nez v7, :cond_7

    .line 279
    monitor-exit v2

    .line 280
    goto/16 :goto_c

    .line 282
    :catchall_2
    move-exception v0

    .line 283
    goto :goto_7

    .line 284
    :cond_7
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 286
    check-cast v8, Landroid/util/MutableLong;

    .line 288
    iget-wide v8, v8, Landroid/util/MutableLong;->value:J

    .line 290
    cmp-long v8, v4, v8

    .line 292
    if-ltz v8, :cond_8

    .line 294
    iget-object v0, v2, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 296
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 299
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 301
    check-cast v0, Ljava/lang/String;

    .line 303
    invoke-virtual {v2, v1, v0}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 306
    goto :goto_6

    .line 307
    :cond_8
    if-eqz v3, :cond_9

    .line 309
    const-string v3, "DeviceIdleController"

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    .line 313
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    const-string v0, ": "

    .line 321
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 326
    check-cast v0, Landroid/util/MutableLong;

    .line 328
    iget-wide v8, v0, Landroid/util/MutableLong;->value:J

    .line 330
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    move-result-object v0

    .line 337
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_9
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 342
    check-cast v0, Landroid/util/MutableLong;

    .line 344
    iget-wide v6, v0, Landroid/util/MutableLong;->value:J

    .line 346
    sub-long/2addr v6, v4

    .line 347
    invoke-virtual {v2, v1, v6, v7}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 350
    :goto_6
    monitor-exit v2

    .line 351
    goto/16 :goto_c

    .line 353
    :goto_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 354
    throw v0

    .line 355
    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    check-cast v2, Ljava/lang/String;

    .line 359
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 361
    if-eqz v2, :cond_a

    .line 363
    move-object v3, v2

    .line 364
    goto :goto_8

    .line 365
    :cond_a
    const-string/jumbo v3, "unknown"

    .line 368
    :goto_8
    invoke-static {v6, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 371
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 373
    iget-object v3, v3, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 375
    invoke-virtual {v3, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    .line 378
    move-result v3

    .line 379
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 381
    iget-object v4, v4, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 383
    invoke-virtual {v4, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    .line 386
    move-result v4

    .line 387
    :try_start_5
    iget-object v6, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 389
    iget-object v6, v6, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 391
    invoke-interface {v6, v7}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 394
    iget-object v6, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 396
    iget-object v6, v6, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 398
    invoke-interface {v6, v7, v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 401
    :catch_0
    if-eqz v3, :cond_b

    .line 403
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 405
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 408
    move-result-object v1

    .line 409
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 411
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 413
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 415
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    .line 417
    invoke-virtual {v1, v3, v6, v9, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 420
    :cond_b
    if-eqz v4, :cond_c

    .line 422
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 424
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 427
    move-result-object v1

    .line 428
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 430
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 432
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 434
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    .line 436
    invoke-virtual {v1, v2, v3, v9, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 439
    :cond_c
    new-array v0, v7, [Ljava/lang/Object;

    .line 441
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 444
    goto/16 :goto_c

    .line 446
    :pswitch_9
    const-string/jumbo v1, "unknown"

    .line 449
    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 452
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 454
    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 456
    invoke-virtual {v1, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    .line 459
    move-result v1

    .line 460
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 462
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 464
    invoke-virtual {v2, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    .line 467
    move-result v2

    .line 468
    :try_start_6
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 470
    iget-object v3, v3, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 472
    invoke-interface {v3, v7}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 475
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 477
    iget-object v3, v3, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 479
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 482
    move-result v4

    .line 483
    invoke-interface {v3, v7, v9, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 486
    :catch_1
    if-eqz v1, :cond_d

    .line 488
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 490
    monitor-enter v1

    .line 491
    :try_start_7
    iget v3, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 493
    add-int/2addr v3, v8

    .line 494
    iput v3, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 496
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 497
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 499
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 501
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 503
    iget-object v11, v1, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Lcom/android/server/DeviceIdleController$4;

    .line 505
    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    .line 507
    const/4 v14, 0x0

    .line 508
    const/4 v15, 0x0

    .line 509
    const/4 v12, 0x0

    .line 510
    const/4 v13, -0x1

    .line 511
    move-object/from16 v16, v1

    .line 513
    invoke-virtual/range {v9 .. v16}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 516
    goto :goto_9

    .line 517
    :catchall_3
    move-exception v0

    .line 518
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 519
    throw v0

    .line 520
    :cond_d
    :goto_9
    if-eqz v2, :cond_e

    .line 522
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 524
    monitor-enter v1

    .line 525
    :try_start_9
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 527
    add-int/2addr v2, v8

    .line 528
    iput v2, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 530
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 531
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 533
    iget-object v8, v1, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 535
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 537
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Lcom/android/server/DeviceIdleController$4;

    .line 539
    iget-object v15, v1, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    .line 541
    const/4 v13, 0x0

    .line 542
    const/4 v14, 0x0

    .line 543
    const/4 v11, 0x0

    .line 544
    const/4 v12, -0x1

    .line 545
    invoke-virtual/range {v8 .. v15}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 548
    goto :goto_a

    .line 549
    :catchall_4
    move-exception v0

    .line 550
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 551
    throw v0

    .line 552
    :cond_e
    :goto_a
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 554
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 557
    new-array v0, v7, [Ljava/lang/Object;

    .line 559
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 562
    goto/16 :goto_c

    .line 564
    :pswitch_a
    new-array v2, v7, [Ljava/lang/Object;

    .line 566
    const v3, 0x84d3

    .line 569
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 572
    iget v2, v1, Landroid/os/Message;->what:I

    .line 574
    const/4 v3, 0x2

    .line 575
    if-ne v2, v3, :cond_f

    .line 577
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 579
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 581
    invoke-virtual {v2, v8}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    .line 584
    move-result v2

    .line 585
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 587
    iget-object v4, v4, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 589
    invoke-virtual {v4, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    .line 592
    move-result v4

    .line 593
    goto :goto_b

    .line 594
    :cond_f
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 596
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 598
    invoke-virtual {v2, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    .line 601
    move-result v2

    .line 602
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 604
    iget-object v4, v4, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 606
    invoke-virtual {v4, v8}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    .line 609
    move-result v4

    .line 610
    :goto_b
    :try_start_b
    iget-object v5, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 612
    iget-object v5, v5, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 614
    invoke-interface {v5, v8}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 617
    iget-object v5, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 619
    iget-object v5, v5, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 621
    iget v1, v1, Landroid/os/Message;->what:I

    .line 623
    if-ne v1, v3, :cond_10

    .line 625
    move v8, v3

    .line 626
    :cond_10
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 629
    move-result v1

    .line 630
    invoke-interface {v5, v8, v9, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    .line 633
    :catch_2
    if-eqz v2, :cond_11

    .line 635
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 637
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 640
    move-result-object v1

    .line 641
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 643
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 645
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 647
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    .line 649
    invoke-virtual {v1, v3, v5, v9, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 652
    :cond_11
    if-eqz v4, :cond_12

    .line 654
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 656
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 659
    move-result-object v1

    .line 660
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 662
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 664
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 666
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    .line 668
    invoke-virtual {v1, v3, v4, v9, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 671
    :cond_12
    new-array v1, v7, [Ljava/lang/Object;

    .line 673
    const v2, 0x84d5

    .line 676
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 679
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 681
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 683
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 686
    goto :goto_c

    .line 687
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 689
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    .line 692
    :cond_13
    :goto_c
    return-void

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
