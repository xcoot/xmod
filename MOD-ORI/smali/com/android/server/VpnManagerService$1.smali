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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

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
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/VpnManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/android/server/VpnManagerService;->-$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/VpnManagerService;->-$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "android.intent.extra.user_handle"

    .line 30
    .line 31
    const/16 v1, -0x2710

    .line 32
    .line 33
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-string v2, "android.intent.extra.UID"

    .line 38
    .line 39
    const/4 v3, -0x1

    .line 40
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 51
    .line 52
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

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 68
    .line 69
    monitor-enter v4

    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 71
    .line 72
    if-eqz p0, :cond_1

    .line 73
    .line 74
    const-string p1, "LockdownVpnTracker"

    .line 75
    .line 76
    const-string/jumbo p2, "reset()"

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 92
    .line 93
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

    .line 101
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

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_3
    const-string v1, "android.intent.action.USER_STARTED"

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-nez p1, :cond_4

    .line 126
    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string p1, "Started user doesn\'t exist. UserId: "

    .line 130
    .line 131
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :cond_4
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 147
    .line 148
    monitor-enter v1

    .line 149
    :try_start_3
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lcom/android/server/connectivity/Vpn;

    .line 156
    .line 157
    if-eqz p1, :cond_5

    .line 158
    .line 159
    const-string p0, "Starting user already has a VPN"

    .line 160
    .line 161
    const-string p1, "VpnManagerService"

    .line 162
    .line 163
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    monitor-exit v1

    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :catchall_2
    move-exception p0

    .line 170
    goto :goto_2

    .line 171
    :cond_5
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 172
    .line 173
    iget-object p2, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    .line 174
    .line 175
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    .line 182
    .line 183
    iget-object v7, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance p1, Lcom/android/server/connectivity/Vpn;

    .line 189
    .line 190
    new-instance v9, Lcom/android/server/connectivity/VpnProfileStore;

    .line 191
    .line 192
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    new-instance v5, Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 196
    .line 197
    invoke-direct {v5}, Lcom/android/server/connectivity/Vpn$Dependencies;-><init>()V

    .line 198
    .line 199
    .line 200
    new-instance v10, Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 201
    .line 202
    invoke-direct {v10, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    new-instance v11, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 206
    .line 207
    invoke-direct {v11}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    .line 208
    .line 209
    .line 210
    move-object v2, p1

    .line 211
    move v8, v0

    .line 212
    invoke-direct/range {v2 .. v11}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    .line 213
    .line 214
    .line 215
    iget-object p2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 216
    .line 217
    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iget p1, p0, Lcom/android/server/VpnManagerService;->mMainUserId:I

    .line 221
    .line 222
    if-ne v0, p1, :cond_6

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_6

    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 231
    .line 232
    .line 233
    :cond_6
    monitor-exit v1

    .line 234
    goto/16 :goto_4

    .line 235
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

    .line 239
    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_9

    .line 245
    .line 246
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 247
    .line 248
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 249
    .line 250
    monitor-enter v1

    .line 251
    :try_start_4
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lcom/android/server/connectivity/Vpn;

    .line 258
    .line 259
    if-nez p1, :cond_8

    .line 260
    .line 261
    const-string p0, "Stopped user has no VPN"

    .line 262
    .line 263
    const-string p1, "VpnManagerService"

    .line 264
    .line 265
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    monitor-exit v1

    .line 269
    goto/16 :goto_4

    .line 270
    .line 271
    :catchall_3
    move-exception p0

    .line 272
    goto :goto_3

    .line 273
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    .line 274
    .line 275
    .line 276
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 277
    .line 278
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 279
    .line 280
    .line 281
    monitor-exit v1

    .line 282
    goto/16 :goto_4

    .line 283
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

    .line 287
    .line 288
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_a

    .line 293
    .line 294
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 295
    .line 296
    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserAdded(Lcom/android/server/VpnManagerService;I)V

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_a
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 301
    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_b

    .line 307
    .line 308
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 309
    .line 310
    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserRemoved(Lcom/android/server/VpnManagerService;I)V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_b
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 315
    .line 316
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_c

    .line 321
    .line 322
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 323
    .line 324
    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserUnlocked(Lcom/android/server/VpnManagerService;I)V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_c
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 329
    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_d

    .line 335
    .line 336
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 337
    .line 338
    invoke-static {p0, v3, v2}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageReplaced(Lcom/android/server/VpnManagerService;Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_d
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 343
    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    const/4 v1, 0x0

    .line 349
    if-eqz v0, :cond_e

    .line 350
    .line 351
    const-string p1, "android.intent.extra.REPLACING"

    .line 352
    .line 353
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 358
    .line 359
    invoke-static {p0, v3, v2, p1}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageRemoved(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V

    .line 360
    .line 361
    .line 362
    goto :goto_4

    .line 363
    :cond_e
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 364
    .line 365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_f

    .line 370
    .line 371
    const-string p1, "android.intent.extra.REPLACING"

    .line 372
    .line 373
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    .line 378
    .line 379
    invoke-static {p0, v3, v2, p1}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageAdded(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V

    .line 380
    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_f
    const-string p0, "VpnManagerService"

    .line 384
    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string/jumbo v0, "received unexpected intent: "

    .line 388
    .line 389
    .line 390
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
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
