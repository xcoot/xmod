.class public final Lcom/android/server/VpnManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/VpnManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VpnManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/VpnManagerService$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/VpnManagerService$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 8
    invoke-static {p2}, Lcom/android/server/VpnManagerService;->-$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V

    .line 11
    iget-object p2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 13
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 16
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 22
    invoke-static {p1}, Lcom/android/server/VpnManagerService;->-$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string v0, "android.intent.extra.user_handle"

    .line 31
    const/16 v1, -0x2710

    .line 33
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 36
    move-result v0

    .line 37
    const-string v2, "android.intent.extra.UID"

    .line 39
    const/4 v3, -0x1

    .line 40
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 56
    :goto_0
    const-string/jumbo v4, "com.android.server.action.LOCKDOWN_RESET"

    .line 59
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 65
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 67
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 69
    monitor-enter v4

    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 72
    if-eqz p0, :cond_1

    .line 74
    const-string p1, "LockdownVpnTracker"

    .line 76
    const-string/jumbo p2, "reset()"

    .line 79
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 84
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 94
    monitor-exit p1

    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    throw p0

    .line 99
    :cond_1
    :goto_1
    monitor-exit v4

    .line 100
    goto/16 :goto_4

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    throw p0

    .line 105
    :cond_2
    if-ne v0, v1, :cond_3

    .line 107
    goto/16 :goto_4

    .line 109
    :cond_3
    const-string v1, "android.intent.action.USER_STARTED"

    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_7

    .line 117
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 119
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 124
    move-result-object p1

    .line 125
    if-nez p1, :cond_4

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    .line 129
    const-string p1, "Started user doesn\'t exist. UserId: "

    .line 131
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 144
    goto/16 :goto_4

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 148
    monitor-enter v1

    .line 149
    :try_start_3
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 151
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lcom/android/server/connectivity/Vpn;

    .line 157
    if-eqz p1, :cond_5

    .line 159
    const-string p0, "Starting user already has a VPN"

    .line 161
    const-string p1, "VpnManagerService"

    .line 163
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit v1

    .line 167
    goto/16 :goto_4

    .line 169
    :catchall_2
    move-exception p0

    .line 170
    goto :goto_2

    .line 171
    :cond_5
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 173
    iget-object p2, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    .line 175
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 178
    move-result-object v3

    .line 179
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 181
    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    .line 183
    iget-object v7, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    new-instance p1, Lcom/android/server/connectivity/Vpn;

    .line 190
    new-instance v9, Lcom/android/server/connectivity/VpnProfileStore;

    .line 192
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v5, Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 197
    invoke-direct {v5}, Lcom/android/server/connectivity/Vpn$Dependencies;-><init>()V

    .line 200
    new-instance v10, Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 202
    invoke-direct {v10, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance v11, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 207
    invoke-direct {v11}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    .line 210
    move-object v2, p1

    .line 211
    move v8, v0

    .line 212
    invoke-direct/range {v2 .. v11}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    .line 215
    iget-object p2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 217
    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    iget p1, p0, Lcom/android/server/VpnManagerService;->mMainUserId:I

    .line 222
    if-ne v0, p1, :cond_6

    .line 224
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 233
    :cond_6
    monitor-exit v1

    .line 234
    goto/16 :goto_4

    .line 236
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 237
    throw p0

    .line 238
    :cond_7
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_9

    .line 246
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 248
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 250
    monitor-enter v1

    .line 251
    :try_start_4
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 253
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lcom/android/server/connectivity/Vpn;

    .line 259
    if-nez p1, :cond_8

    .line 261
    const-string p0, "Stopped user has no VPN"

    .line 263
    const-string p1, "VpnManagerService"

    .line 265
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    monitor-exit v1

    .line 269
    goto/16 :goto_4

    .line 271
    :catchall_3
    move-exception p0

    .line 272
    goto :goto_3

    .line 273
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    .line 276
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 278
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 281
    monitor-exit v1

    .line 282
    goto/16 :goto_4

    .line 284
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 285
    throw p0

    .line 286
    :cond_9
    const-string v1, "android.intent.action.USER_ADDED"

    .line 288
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_a

    .line 294
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 296
    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserAdded(Lcom/android/server/VpnManagerService;I)V

    .line 299
    goto :goto_4

    .line 300
    :cond_a
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_b

    .line 308
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 310
    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserRemoved(Lcom/android/server/VpnManagerService;I)V

    .line 313
    goto :goto_4

    .line 314
    :cond_b
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 316
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_c

    .line 322
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 324
    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserUnlocked(Lcom/android/server/VpnManagerService;I)V

    .line 327
    goto :goto_4

    .line 328
    :cond_c
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_d

    .line 336
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 338
    invoke-static {p0, v3, v2}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageReplaced(Lcom/android/server/VpnManagerService;Ljava/lang/String;I)V

    .line 341
    goto :goto_4

    .line 342
    :cond_d
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    move-result v0

    .line 348
    const/4 v1, 0x0

    .line 349
    if-eqz v0, :cond_e

    .line 351
    const-string p1, "android.intent.extra.REPLACING"

    .line 353
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 356
    move-result p1

    .line 357
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 359
    invoke-static {p0, v3, v2, p1}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageRemoved(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V

    .line 362
    goto :goto_4

    .line 363
    :cond_e
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_f

    .line 371
    const-string p1, "android.intent.extra.REPLACING"

    .line 373
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 376
    move-result p1

    .line 377
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 379
    invoke-static {p0, v3, v2, p1}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageAdded(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V

    .line 382
    goto :goto_4

    .line 383
    :cond_f
    const-string p0, "VpnManagerService"

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    .line 387
    const-string/jumbo v0, "received unexpected intent: "

    .line 390
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    move-result-object p1

    .line 400
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_4
    return-void

    .line 404
    nop

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
