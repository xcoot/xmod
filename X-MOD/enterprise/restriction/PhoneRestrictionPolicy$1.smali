.class public final Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    .line 10
    move-result-object p2

    .line 11
    const-string/jumbo v0, "smsBlockHandler"

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result p2

    .line 19
    if-ne p2, p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 29
    monitor-exit p1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    const-string v0, "PhoneRestrictionPolicy"

    .line 41
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_a

    .line 53
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 61
    goto/16 :goto_5

    .line 63
    :cond_1
    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_b

    .line 71
    const-string p1, "PhoneRestrictionPolicy"

    .line 73
    const-string p2, "Received ACTION_SIM_STATE_CHANGED broadcast"

    .line 75
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 80
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 85
    iget-object p1, p1, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    const-string p2, "SimTable"

    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 93
    move-result p1

    .line 94
    if-lez p1, :cond_9

    .line 96
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 98
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 101
    move-result-object p1

    .line 102
    const/4 p2, 0x0

    .line 103
    if-eqz p1, :cond_6

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object p1

    .line 109
    move v0, p2

    .line 110
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_5

    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 122
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 129
    move-result v3

    .line 130
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    .line 133
    move-result v3

    .line 134
    const/4 v4, 0x2

    .line 135
    const/4 v5, 0x1

    .line 136
    if-ne v3, v4, :cond_3

    .line 138
    move v3, v5

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    move v3, p2

    .line 141
    :goto_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 144
    move-result v4

    .line 145
    const-string v6, "PhoneRestrictionPolicy"

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    const-string/jumbo v8, "unlockAllSimCards Got iccId = "

    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v8, " for subscriptionId = "

    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v7

    .line 173
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    .line 183
    move-result v1

    .line 184
    if-eqz v2, :cond_4

    .line 186
    if-eqz v3, :cond_4

    .line 188
    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    if-eqz v1, :cond_2

    .line 196
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEnterpriseSimPin:Lcom/android/server/enterprise/restriction/EnterpriseSimPin;

    .line 198
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    invoke-static {v4, v1}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->supplyPinReportResultForSubscriber(ILjava/lang/String;)V

    .line 204
    goto :goto_1

    .line 205
    :catchall_1
    move-exception p1

    .line 206
    goto :goto_4

    .line 207
    :cond_4
    if-eqz v3, :cond_2

    .line 209
    move v0, v5

    .line 210
    goto :goto_1

    .line 211
    :cond_5
    move p2, v0

    .line 212
    goto :goto_3

    .line 213
    :cond_6
    const-string p1, "PhoneRestrictionPolicy"

    .line 215
    const-string/jumbo v0, "unlockAllSimCards subInfoList list is null"

    .line 218
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_3
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 223
    if-nez p1, :cond_7

    .line 225
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 227
    const-string/jumbo v0, "keyguard"

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Landroid/app/KeyguardManager;

    .line 236
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 238
    :cond_7
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 240
    if-eqz p2, :cond_8

    .line 242
    if-eqz p1, :cond_8

    .line 244
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_8

    .line 250
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 252
    new-instance p2, Landroid/content/Intent;

    .line 254
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    .line 257
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    :cond_8
    monitor-exit p0

    .line 264
    goto :goto_6

    .line 265
    :cond_9
    monitor-exit p0

    .line 266
    goto :goto_6

    .line 267
    :goto_4
    monitor-exit p0

    .line 268
    throw p1

    .line 269
    :cond_a
    :goto_5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 271
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 276
    move-result p1

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    .line 280
    :cond_b
    :goto_6
    return-void

    .line 281
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 284
    move-result-object p1

    .line 285
    const-string p2, "PhoneRestrictionPolicy"

    .line 287
    if-nez p1, :cond_c

    .line 289
    const-string p0, "action is null"

    .line 291
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    goto :goto_7

    .line 295
    :cond_c
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 300
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result p2

    .line 304
    if-eqz p2, :cond_d

    .line 306
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 308
    check-cast p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 310
    iget-object p1, p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 312
    const/4 p2, 0x2

    .line 313
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 316
    move-result-object p1

    .line 317
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 319
    check-cast p2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 321
    iget-object p2, p2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 323
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 328
    check-cast p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 330
    iget-object p1, p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 332
    const-string/jumbo p2, "content://com.sec.knox.provider2/PhoneRestrictionPolicy/isRCSEnabled"

    .line 335
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 338
    move-result-object p2

    .line 339
    invoke-static {p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 342
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 344
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 346
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifySmsPatternCheck()V

    .line 349
    goto :goto_7

    .line 350
    :cond_d
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 352
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    move-result p2

    .line 356
    if-nez p2, :cond_e

    .line 358
    const-string p2, "android.intent.action.REBOOT"

    .line 360
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    move-result p1

    .line 364
    if-eqz p1, :cond_f

    .line 366
    :cond_e
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 368
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 370
    const/4 p1, 0x1

    .line 371
    iput-boolean p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    .line 373
    :cond_f
    :goto_7
    return-void

    .line 374
    :pswitch_2
    const-string/jumbo p1, "subscription"

    .line 377
    const/4 v0, -0x1

    .line 378
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 381
    move-result p1

    .line 382
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 385
    move-result p1

    .line 386
    const/4 p2, 0x1

    .line 387
    if-eqz p1, :cond_10

    .line 389
    if-ne p1, p2, :cond_11

    .line 391
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 393
    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 395
    invoke-virtual {v0, p2, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 398
    move-result p1

    .line 399
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 401
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 403
    const/4 p2, 0x0

    .line 404
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setNetworkState(IZ)V

    .line 407
    :cond_11
    return-void

    .line 408
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 415
    move-result-object v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    .line 418
    const-string v2, "RcsReceiver, intent received : "

    .line 420
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object p2

    .line 430
    const-string v1, "PhoneRestrictionPolicy"

    .line 432
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-eqz p1, :cond_1b

    .line 437
    if-nez v0, :cond_12

    .line 439
    goto/16 :goto_a

    .line 441
    :cond_12
    const-string/jumbo p2, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    .line 444
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    move-result v2

    .line 448
    if-eqz v2, :cond_13

    .line 450
    const-string/jumbo v2, "response_status"

    .line 453
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 456
    move-result v2

    .line 457
    if-nez v2, :cond_13

    .line 459
    const-string/jumbo p0, "rcs message sent fail case, return"

    .line 462
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    goto/16 :goto_b

    .line 467
    :cond_13
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 469
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    new-instance v2, Landroid/content/Intent;

    .line 476
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 479
    const-string/jumbo v3, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    .line 482
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    move-result v4

    .line 486
    const-wide/16 v5, -0x1

    .line 488
    const-string/jumbo v7, "id"

    .line 491
    if-nez v4, :cond_18

    .line 493
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    move-result p2

    .line 497
    if-eqz p2, :cond_14

    .line 499
    goto :goto_8

    .line 500
    :cond_14
    const-string/jumbo p2, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    .line 503
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 506
    move-result v3

    .line 507
    if-nez v3, :cond_15

    .line 509
    const-string/jumbo v3, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    .line 512
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    move-result v3

    .line 516
    if-eqz v3, :cond_1a

    .line 518
    :cond_15
    const-string/jumbo v3, "sessionId"

    .line 521
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 524
    move-result-wide v3

    .line 525
    invoke-virtual {v2, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 528
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    move-result p1

    .line 532
    if-eqz p1, :cond_16

    .line 534
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_THUMBNAIL_RECEIVED"

    .line 537
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    goto :goto_9

    .line 541
    :cond_16
    const-string/jumbo p1, "sessionDirection"

    .line 544
    const/4 p2, 0x0

    .line 545
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 548
    move-result p1

    .line 549
    if-nez p1, :cond_17

    .line 551
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_RECEIVED"

    .line 554
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    goto :goto_9

    .line 558
    :cond_17
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_SENT"

    .line 561
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    goto :goto_9

    .line 565
    :cond_18
    :goto_8
    const-string/jumbo p2, "message_id"

    .line 568
    invoke-virtual {v0, p2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 571
    move-result-wide v4

    .line 572
    invoke-virtual {v2, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 575
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    move-result p1

    .line 579
    if-eqz p1, :cond_19

    .line 581
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_RECEIVED"

    .line 584
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    goto :goto_9

    .line 588
    :cond_19
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_SENT"

    .line 591
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    :cond_1a
    :goto_9
    const-string p1, "RcsReceiver, sendRcsBroadcast"

    .line 596
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 601
    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 604
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 607
    goto :goto_b

    .line 608
    :cond_1b
    :goto_a
    const-string p0, "No data arrived at mRcsReceiver"

    .line 610
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_b
    return-void

    .line 614
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 617
    move-result-object p1

    .line 618
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 621
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    move-result p1

    .line 625
    if-eqz p1, :cond_1c

    .line 627
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 630
    const/4 v0, 0x0

    .line 631
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 634
    move-result p1

    .line 635
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    .line 637
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 639
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    .line 642
    :cond_1c
    return-void

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
