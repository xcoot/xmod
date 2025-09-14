.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 8
    check-cast p1, Landroid/os/RemoteCallback;

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p2}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string v0, "android.intent.extra.user_handle"

    .line 25
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 28
    move-result v1

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    move-result v0

    .line 33
    const-string v1, "android.intent.action.USER_STARTED"

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v1, :cond_1

    .line 42
    if-nez v0, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 46
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 48
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 55
    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 57
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isNetworkLoggingEnabledInternalLocked()Z

    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 65
    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 67
    invoke-virtual {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNetworkLoggingActiveInternal(Z)V

    .line 70
    :cond_0
    monitor-exit v1

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_1
    :goto_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 85
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 87
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->calculateHasIncompatibleAccounts()V

    .line 90
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 100
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 102
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 104
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    .line 107
    move-result v1

    .line 108
    if-ne v0, v1, :cond_4

    .line 110
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 112
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 114
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mBugreportCollectionManager:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 116
    iget-object v3, v1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 118
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    .line 121
    move-result-object v3

    .line 122
    if-nez v3, :cond_3

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    const-string/jumbo v3, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    .line 128
    const-string/jumbo v4, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    .line 131
    invoke-static {v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 134
    move-result-object v3

    .line 135
    iget-object v4, v1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 137
    iget-object v5, v1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 139
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    const/4 v3, 0x3

    .line 143
    invoke-virtual {v1, v3}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->notify(I)V

    .line 146
    :cond_4
    :goto_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_5

    .line 154
    const-string/jumbo v1, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_6

    .line 163
    :cond_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 165
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 167
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;

    .line 171
    invoke-direct {v3, p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;I)V

    .line 174
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_6
    const-string v1, "android.intent.action.USER_ADDED"

    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_7

    .line 185
    const-string p1, "android.app.action.USER_ADDED"

    .line 187
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 192
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 194
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 197
    move-result-object v1

    .line 198
    monitor-enter v1

    .line 199
    :try_start_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 201
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 203
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->maybePauseDeviceWideLoggingLocked()V

    .line 206
    monitor-exit v1

    .line 207
    goto/16 :goto_5

    .line 209
    :catchall_1
    move-exception p0

    .line 210
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    throw p0

    .line 212
    :cond_7
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_9

    .line 220
    const-string p1, "android.app.action.USER_REMOVED"

    .line 222
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 227
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 229
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 233
    monitor-enter v1

    .line 234
    :try_start_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 236
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 238
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 241
    move-result p1

    .line 242
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 244
    check-cast p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 246
    invoke-virtual {p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    .line 249
    if-nez p1, :cond_8

    .line 251
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 253
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 255
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mdiscardDeviceWideLogsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 258
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 260
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 262
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->areAllUsersAffiliatedWithDeviceLocked()Z

    .line 265
    move-result p2

    .line 266
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 269
    move-result v2

    .line 270
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 272
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;

    .line 274
    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V

    .line 277
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 283
    goto :goto_2

    .line 284
    :catchall_2
    move-exception p0

    .line 285
    goto :goto_3

    .line 286
    :cond_8
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 287
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 289
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 291
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleUserRemoved(I)V

    .line 296
    goto/16 :goto_5

    .line 298
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 299
    throw p0

    .line 300
    :cond_9
    const-string v1, "android.intent.action.USER_STARTED"

    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    move-result v1

    .line 306
    const/4 v3, 0x0

    .line 307
    const/4 v4, 0x0

    .line 308
    if-eqz v1, :cond_b

    .line 310
    const-string p1, "android.app.action.USER_STARTED"

    .line 312
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 317
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 319
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 322
    move-result-object v1

    .line 323
    monitor-enter v1

    .line 324
    :try_start_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 326
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 328
    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 331
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 333
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 335
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 337
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 340
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 341
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 343
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 345
    invoke-static {v0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 348
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 350
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    .line 355
    move-result p1

    .line 356
    if-ltz p1, :cond_a

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 361
    goto/16 :goto_5

    .line 363
    :cond_a
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->suspendPersonalAppsInternal(IIZ)V

    .line 366
    goto/16 :goto_5

    .line 368
    :catchall_3
    move-exception p0

    .line 369
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 370
    throw p0

    .line 371
    :cond_b
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 373
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_c

    .line 379
    const-string p1, "android.app.action.USER_STOPPED"

    .line 381
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 386
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 388
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 391
    move-result p1

    .line 392
    if-eqz p1, :cond_1e

    .line 394
    const-string p1, "DevicePolicyManager"

    .line 396
    const-string p2, "Managed profile was stopped"

    .line 398
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 403
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 408
    goto/16 :goto_5

    .line 410
    :cond_c
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 412
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    move-result v1

    .line 416
    if-eqz v1, :cond_d

    .line 418
    const-string p1, "android.app.action.USER_SWITCHED"

    .line 420
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 423
    goto/16 :goto_5

    .line 425
    :cond_d
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 427
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    move-result v1

    .line 431
    if-eqz v1, :cond_e

    .line 433
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 435
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 437
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 440
    move-result-object v1

    .line 441
    monitor-enter v1

    .line 442
    :try_start_6
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 444
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 446
    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 449
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 450
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 452
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 454
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_1e

    .line 460
    const-string p1, "DevicePolicyManager"

    .line 462
    const-string p2, "Managed profile became unlocked"

    .line 464
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 469
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 471
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 474
    move-result p1

    .line 475
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 477
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 479
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mtriggerPolicyComplianceCheckIfNeeded(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 482
    goto/16 :goto_5

    .line 484
    :catchall_4
    move-exception p0

    .line 485
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 486
    throw p0

    .line 487
    :cond_e
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 489
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    move-result v1

    .line 493
    if-eqz v1, :cond_f

    .line 495
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 497
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 499
    invoke-static {v0, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 502
    goto/16 :goto_5

    .line 504
    :cond_f
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 506
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    move-result v1

    .line 510
    if-eqz v1, :cond_10

    .line 512
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 514
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 516
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 523
    move-result-object p1

    .line 524
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 527
    goto/16 :goto_5

    .line 529
    :cond_10
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 531
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    move-result v1

    .line 535
    if-eqz v1, :cond_14

    .line 537
    const-string p1, "android.intent.extra.REPLACING"

    .line 539
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 542
    move-result p1

    .line 543
    if-eqz p1, :cond_11

    .line 545
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 547
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 549
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 552
    move-result-object p1

    .line 553
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 556
    move-result-object p1

    .line 557
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 560
    goto/16 :goto_5

    .line 562
    :cond_11
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 564
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 566
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 569
    move-result-object p1

    .line 570
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 577
    move-result-object p2

    .line 578
    iget-boolean p2, p2, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 580
    if-nez p2, :cond_12

    .line 582
    goto/16 :goto_5

    .line 584
    :cond_12
    filled-new-array {p1}, [Ljava/lang/String;

    .line 587
    move-result-object p2

    .line 588
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 590
    invoke-virtual {v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager(I)Landroid/content/pm/PackageManager;

    .line 593
    move-result-object v1

    .line 594
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 597
    move-result-object v1

    .line 598
    array-length v1, v1

    .line 599
    if-eqz v1, :cond_13

    .line 601
    new-instance p0, Ljava/lang/StringBuilder;

    .line 603
    const-string p2, "Newly installed package is unsuspendable: "

    .line 605
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    move-result-object p0

    .line 615
    const-string p1, "DevicePolicyManager"

    .line 617
    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    goto/16 :goto_5

    .line 622
    :cond_13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setCrossProfileAppToIgnored(Ljava/lang/String;I)V

    .line 625
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 627
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 633
    move-result-object p0

    .line 634
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    .line 637
    goto/16 :goto_5

    .line 639
    :cond_14
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 641
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    move-result v1

    .line 645
    if-eqz v1, :cond_15

    .line 647
    const-string v1, "android.intent.extra.REPLACING"

    .line 649
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 652
    move-result v1

    .line 653
    if-nez v1, :cond_15

    .line 655
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 657
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 659
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 662
    move-result-object v1

    .line 663
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 666
    move-result-object v1

    .line 667
    invoke-static {v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 670
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 672
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 674
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 677
    move-result-object p1

    .line 678
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 681
    move-result-object p1

    .line 682
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 684
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda27;

    .line 686
    const/4 v1, 0x2

    .line 687
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/Object;I)V

    .line 690
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 693
    goto/16 :goto_5

    .line 695
    :cond_15
    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 697
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    move-result p2

    .line 701
    if-eqz p2, :cond_16

    .line 703
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 705
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 707
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 709
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 712
    move-result-object p0

    .line 713
    const/16 p1, 0x3e9

    .line 715
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 718
    goto/16 :goto_5

    .line 720
    :cond_16
    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 722
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    move-result p2

    .line 726
    if-nez p2, :cond_1d

    .line 728
    const-string p2, "android.intent.action.TIME_SET"

    .line 730
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    move-result p2

    .line 734
    if-eqz p2, :cond_17

    .line 736
    goto/16 :goto_4

    .line 738
    :cond_17
    const-string/jumbo p2, "com.android.server.ACTION_PROFILE_OFF_DEADLINE"

    .line 741
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 744
    move-result p2

    .line 745
    if-eqz p2, :cond_19

    .line 747
    const-string p1, "DevicePolicyManager"

    .line 749
    const-string p2, "Profile off deadline alarm was triggered"

    .line 751
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 756
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 758
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    .line 761
    move-result p2

    .line 762
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    .line 765
    move-result p1

    .line 766
    if-ltz p1, :cond_18

    .line 768
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 770
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 772
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 775
    goto/16 :goto_5

    .line 777
    :cond_18
    const-string p0, "DevicePolicyManager"

    .line 779
    const-string p1, "Got deadline alarm for nonexistent profile"

    .line 781
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    goto/16 :goto_5

    .line 786
    :cond_19
    const-string/jumbo p2, "com.android.server.ACTION_TURN_PROFILE_ON_NOTIFICATION"

    .line 789
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 792
    move-result p2

    .line 793
    if-eqz p2, :cond_1a

    .line 795
    const-string p1, "DevicePolicyManager"

    .line 797
    new-instance p2, Ljava/lang/StringBuilder;

    .line 799
    const-string/jumbo v1, "requesting to turn on the profile: "

    .line 802
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    move-result-object p2

    .line 812
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 817
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 819
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 821
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 824
    move-result-object p1

    .line 825
    invoke-virtual {p0, v4, p1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    .line 828
    goto :goto_5

    .line 829
    :cond_1a
    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 831
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 834
    move-result p2

    .line 835
    if-eqz p2, :cond_1b

    .line 837
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 839
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 841
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 844
    move-result-object p2

    .line 845
    invoke-static {p1, p2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyIfManagedSubscriptionsAreUnavailable(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Z)V

    .line 848
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 850
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 852
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 855
    goto :goto_5

    .line 856
    :cond_1b
    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 858
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    move-result p2

    .line 862
    if-eqz p2, :cond_1c

    .line 864
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 866
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 868
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 871
    move-result-object p2

    .line 872
    invoke-static {p1, p2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyIfManagedSubscriptionsAreUnavailable(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Z)V

    .line 875
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 877
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 879
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 882
    move-result p1

    .line 883
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 885
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 887
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mtriggerPolicyComplianceCheckIfNeeded(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 890
    goto :goto_5

    .line 891
    :cond_1c
    const-string p2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 893
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 896
    move-result p1

    .line 897
    if-eqz p1, :cond_1e

    .line 899
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 901
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 903
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->calculateHasIncompatibleAccounts()V

    .line 906
    goto :goto_5

    .line 907
    :cond_1d
    :goto_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 909
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 911
    invoke-virtual {p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateSystemUpdateFreezePeriodsRecord(Z)V

    .line 914
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 916
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 918
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    .line 921
    move-result p2

    .line 922
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    .line 925
    move-result p1

    .line 926
    if-ltz p1, :cond_1e

    .line 928
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 930
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 935
    :cond_1e
    :goto_5
    return-void

    .line 936
    nop

    .line 937
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendDeviceOwnerUserCommand(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 12
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 20
    new-instance v5, Landroid/os/Bundle;

    .line 22
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 25
    const-string v1, "android.intent.extra.USER"

    .line 27
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v5, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 36
    move-object v2, p0

    .line 37
    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    move-object v4, p2

    .line 42
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;Z)Z

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method
