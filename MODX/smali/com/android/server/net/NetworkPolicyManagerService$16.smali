.class public final Lcom/android/server/net/NetworkPolicyManagerService$16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private final handleMessage$com$android$server$net$NetworkPolicyManagerService$16(Landroid/os/Message;)Z
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_2b

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_29

    .line 10
    const/4 v3, 0x5

    .line 11
    if-eq v0, v3, :cond_27

    .line 13
    const/high16 v3, 0x40000000    # 2.0f

    .line 15
    const/4 v4, 0x6

    .line 16
    if-eq v0, v4, :cond_24

    .line 18
    const/4 v5, 0x7

    .line 19
    if-eq v0, v5, :cond_23

    .line 21
    const/16 v5, 0xa

    .line 23
    if-eq v0, v5, :cond_22

    .line 25
    const/16 v5, 0xb

    .line 27
    if-eq v0, v5, :cond_21

    .line 29
    const/16 v5, 0xd

    .line 31
    if-eq v0, v5, :cond_1e

    .line 33
    const/16 v3, 0x33

    .line 35
    if-eq v0, v3, :cond_15

    .line 37
    const/16 v3, 0x3ed

    .line 39
    if-eq v0, v3, :cond_11

    .line 41
    const/16 v3, 0x3ef

    .line 43
    if-eq v0, v3, :cond_e

    .line 45
    packed-switch v0, :pswitch_data_0

    .line 48
    return v2

    .line 49
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 52
    move-result-wide v3

    .line 53
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 55
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 60
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 62
    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    .line 65
    move-result p1

    .line 66
    sub-int/2addr p1, v1

    .line 67
    const-wide v5, 0x7fffffffffffffffL

    .line 72
    move-wide v7, v5

    .line 73
    :goto_0
    if-ltz p1, :cond_1

    .line 75
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 77
    iget-object v9, v9, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 79
    invoke-virtual {v9, p1}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 82
    move-result-wide v9

    .line 83
    cmp-long v11, v9, v3

    .line 85
    if-lez v11, :cond_0

    .line 87
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 90
    move-result-wide v7

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :cond_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 96
    iget-object v9, v9, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 98
    invoke-virtual {v9, p1}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 101
    move-result v9

    .line 102
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 104
    iget-object v10, v10, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundTransitioningUids:Landroid/util/SparseLongArray;

    .line 106
    invoke-virtual {v10, p1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 109
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 111
    invoke-virtual {v10, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForBackgroundUL(I)V

    .line 114
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 116
    invoke-virtual {v10, v9, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IZ)V

    .line 119
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 124
    iput-wide v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNextProcessBackgroundUidsTime:J

    .line 126
    cmp-long p1, v7, v5

    .line 128
    if-gez p1, :cond_2

    .line 130
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 132
    const/16 p1, 0x18

    .line 134
    invoke-virtual {p0, p1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 137
    :cond_2
    monitor-exit v0

    .line 138
    return v1

    .line 139
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p0

    .line 141
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    check-cast p1, Landroid/util/SparseArray;

    .line 145
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 148
    move-result v0

    .line 149
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 151
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 153
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 156
    move-result v3

    .line 157
    move v4, v2

    .line 158
    :goto_3
    if-ge v4, v3, :cond_5

    .line 160
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 162
    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 164
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 170
    move v6, v2

    .line 171
    :goto_4
    if-ge v6, v0, :cond_4

    .line 173
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 176
    move-result v7

    .line 177
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 180
    move-result-object v8

    .line 181
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 183
    iget v9, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 185
    iget v10, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 187
    iget v8, v8, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 189
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 191
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    :try_start_1
    invoke-interface {v5, v7, v9, v10}, Landroid/net/INetworkPolicyListener;->onBlockedReasonChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :catch_0
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 199
    if-eqz v9, :cond_3

    .line 201
    const-string v9, "NetworkPolicy"

    .line 203
    new-instance v10, Ljava/lang/StringBuilder;

    .line 205
    const-string v11, "Dispatching rules="

    .line 207
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    .line 213
    move-result-object v11

    .line 214
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v11, " for uid="

    .line 219
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v10

    .line 229
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_3
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 234
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    :try_start_2
    invoke-interface {v5, v7, v8}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    :catch_1
    add-int/lit8 v6, v6, 0x1

    .line 242
    goto :goto_4

    .line 243
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 245
    goto :goto_3

    .line 246
    :cond_5
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 248
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 250
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 253
    :goto_5
    if-ge v2, v0, :cond_6

    .line 255
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 258
    move-result-object p0

    .line 259
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 266
    goto :goto_5

    .line 267
    :cond_6
    return v1

    .line 268
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 270
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 272
    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 275
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 277
    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 278
    :try_start_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 280
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 282
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 284
    iget-object v6, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

    .line 286
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 289
    move-result v6

    .line 290
    if-ne v4, v6, :cond_8

    .line 292
    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 294
    if-eqz v4, :cond_7

    .line 296
    const-string v4, "NetworkPolicy"

    .line 298
    const-string v6, "Clearing expired subscription plans."

    .line 300
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    goto :goto_6

    .line 304
    :catchall_1
    move-exception p0

    .line 305
    goto :goto_8

    .line 306
    :cond_7
    :goto_6
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 308
    new-array v6, v2, [Landroid/telephony/SubscriptionPlan;

    .line 310
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    move-object v9, p0

    .line 313
    check-cast v9, Ljava/lang/String;

    .line 315
    const-wide/16 v7, 0x0

    .line 317
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setSubscriptionPlansInternal(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 320
    goto :goto_7

    .line 321
    :cond_8
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 323
    if-eqz p0, :cond_9

    .line 325
    const-string p0, "NetworkPolicy"

    .line 327
    const-string p1, "Ignoring stale CLEAR_SUBSCRIPTION_PLANS."

    .line 329
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_9
    :goto_7
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 333
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 334
    return v1

    .line 335
    :catchall_2
    move-exception p0

    .line 336
    goto :goto_9

    .line 337
    :goto_8
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 338
    :try_start_7
    throw p0

    .line 339
    :goto_9
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 340
    throw p0

    .line 341
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 343
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 345
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    check-cast p1, Ljava/lang/Integer;

    .line 349
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 352
    move-result p1

    .line 353
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 355
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 357
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 360
    move-result v4

    .line 361
    :goto_a
    if-ge v2, v4, :cond_a

    .line 363
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 365
    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 367
    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 370
    move-result-object v5

    .line 371
    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 373
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 375
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    :try_start_8
    invoke-interface {v5, v0, p1, v3}, Landroid/net/INetworkPolicyListener;->onBlockedReasonChanged(III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 381
    :catch_2
    add-int/lit8 v2, v2, 0x1

    .line 383
    goto :goto_a

    .line 384
    :cond_a
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 386
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 388
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 391
    return v1

    .line 392
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 394
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 396
    invoke-virtual {p1}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 399
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 401
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 403
    monitor-enter v0

    .line 404
    :try_start_9
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 406
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 409
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 411
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 414
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 416
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 419
    monitor-exit v0

    .line 420
    return v1

    .line 421
    :catchall_3
    move-exception p0

    .line 422
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 423
    throw p0

    .line 424
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 428
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 430
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 432
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 434
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 437
    move-result v3

    .line 438
    :goto_b
    if-ge v2, v3, :cond_b

    .line 440
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 442
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 444
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 447
    move-result-object v4

    .line 448
    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 450
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 452
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    :try_start_a
    invoke-interface {v4, p1, v0}, Landroid/net/INetworkPolicyListener;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    .line 458
    :catch_3
    add-int/lit8 v2, v2, 0x1

    .line 460
    goto :goto_b

    .line 461
    :cond_b
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 463
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 465
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 468
    return v1

    .line 469
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    check-cast v0, Landroid/net/NetworkTemplate;

    .line 473
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 475
    if-eqz p1, :cond_c

    .line 477
    move v2, v1

    .line 478
    :cond_c
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 480
    invoke-static {p0, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetNetworkTemplateEnabledInner(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V

    .line 483
    return v1

    .line 484
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 486
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 488
    check-cast p1, Ljava/util/Set;

    .line 490
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 492
    invoke-static {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetMeteredRestrictedPackagesInternal(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 495
    return v1

    .line 496
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 498
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 500
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 502
    check-cast v0, Ljava/lang/Integer;

    .line 504
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 507
    move-result v0

    .line 508
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 510
    check-cast v3, Ljava/lang/Integer;

    .line 512
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 515
    move-result v3

    .line 516
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 518
    check-cast v4, Ljava/lang/Integer;

    .line 520
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 523
    move-result v4

    .line 524
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 526
    check-cast p1, [I

    .line 528
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 530
    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 532
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 535
    move-result v5

    .line 536
    :goto_c
    if-ge v2, v5, :cond_d

    .line 538
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 540
    iget-object v6, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 542
    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 545
    move-result-object v6

    .line 546
    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 548
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 550
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    :try_start_b
    invoke-interface {v6, v0, v3, v4, p1}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III[I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4

    .line 556
    :catch_4
    add-int/lit8 v2, v2, 0x1

    .line 558
    goto :goto_c

    .line 559
    :cond_d
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 561
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 563
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 566
    return v1

    .line 567
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 569
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 571
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    .line 574
    return v1

    .line 575
    :cond_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 577
    if-eqz p1, :cond_f

    .line 579
    move p1, v1

    .line 580
    goto :goto_d

    .line 581
    :cond_f
    move p1, v2

    .line 582
    :goto_d
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 584
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 586
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    move-result-object v3

    .line 590
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 592
    const-string/jumbo v5, "tethering_data_warning_sim_slot_0"

    .line 595
    invoke-virtual {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    .line 598
    move-result-wide v4

    .line 599
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 602
    move-result-object v4

    .line 603
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 608
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 610
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 613
    move-result-object v3

    .line 614
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 616
    const-string/jumbo v5, "tethering_data_warning_sim_slot_1"

    .line 619
    invoke-virtual {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    .line 622
    move-result-wide v4

    .line 623
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 626
    move-result-object v4

    .line 627
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v0, "NetworkPolicy"

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    .line 634
    const-string v4, "MSG_CHECK_TETHERING_WARNING_CHANGED() - mTetheringWarningBytes[0]: "

    .line 636
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 639
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 641
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 643
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    move-result-object v2

    .line 647
    const-wide/16 v5, -0x1

    .line 649
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 652
    move-result-object v7

    .line 653
    invoke-virtual {v4, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    move-result-object v2

    .line 657
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 660
    const-string v2, ", mTetheringWarningBytes[1]: "

    .line 662
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 667
    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 669
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    move-result-object v4

    .line 673
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 676
    move-result-object v7

    .line 677
    invoke-virtual {v2, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    move-result-object v2

    .line 681
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    move-result-object v2

    .line 688
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-eqz p1, :cond_10

    .line 693
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 695
    iput-wide v5, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J

    .line 697
    :cond_10
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 699
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 701
    monitor-enter p1

    .line 702
    :try_start_c
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 704
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 707
    monitor-exit p1

    .line 708
    return v1

    .line 709
    :catchall_4
    move-exception p0

    .line 710
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 711
    throw p0

    .line 712
    :cond_11
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 714
    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 716
    iget-object v3, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 718
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 721
    move-result-object v3

    .line 722
    const v5, 0x1110167

    .line 725
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 728
    move-result v3

    .line 729
    const-string/jumbo v5, "ro.csc.country_code"

    .line 732
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 735
    move-result-object v5

    .line 736
    const-string v6, "China"

    .line 738
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 741
    move-result v5

    .line 742
    const-string v6, "NetworkPolicy"

    .line 744
    if-eqz v5, :cond_12

    .line 746
    if-nez v3, :cond_12

    .line 748
    const-string v3, "CHN don\'t use RestrictBackgroundData during PowerSave mode"

    .line 750
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    move v3, v2

    .line 754
    goto :goto_e

    .line 755
    :cond_12
    iget-object v3, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 757
    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 760
    move-result-object v3

    .line 761
    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    .line 765
    const-string/jumbo v5, "getRestrictBackgroundInLowerPowerMode: enabled("

    .line 768
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 774
    const-string v5, ")"

    .line 776
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    move-result-object v4

    .line 783
    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :goto_e
    if-eqz v3, :cond_13

    .line 788
    iget-boolean v3, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 790
    if-nez v3, :cond_13

    .line 792
    move v2, v1

    .line 793
    :cond_13
    iput-boolean v2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 795
    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 797
    if-eq v0, p1, :cond_14

    .line 799
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 801
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 803
    monitor-enter p1

    .line 804
    :try_start_d
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 806
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveAllowlistUL()V

    .line 809
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 811
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 814
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 816
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 819
    monitor-exit p1

    .line 820
    goto :goto_f

    .line 821
    :catchall_5
    move-exception p0

    .line 822
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 823
    throw p0

    .line 824
    :cond_14
    :goto_f
    return v1

    .line 825
    :cond_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 827
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 829
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 831
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 833
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 836
    move-result-object v3

    .line 837
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 839
    const-string/jumbo v5, "connectivity"

    .line 842
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 845
    move-result-object v4

    .line 846
    check-cast v4, Landroid/net/ConnectivityManager;

    .line 848
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 850
    const-string v6, "activity"

    .line 852
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 855
    move-result-object v5

    .line 856
    check-cast v5, Landroid/app/ActivityManager;

    .line 858
    if-eqz v3, :cond_1d

    .line 860
    if-eqz v4, :cond_1d

    .line 862
    if-nez v5, :cond_16

    .line 864
    goto/16 :goto_12

    .line 866
    :cond_16
    :try_start_e
    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    .line 869
    move-result-object v0

    .line 870
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 873
    move-result p1

    .line 874
    invoke-virtual {v3, v0, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 877
    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 878
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 881
    move-result-object v0

    .line 882
    if-eqz v0, :cond_1d

    .line 884
    if-nez p1, :cond_17

    .line 886
    goto/16 :goto_12

    .line 888
    :cond_17
    invoke-virtual {p1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 891
    move-result-object v3

    .line 892
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 895
    move-result-object v3

    .line 896
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 898
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 901
    move-result-object v5

    .line 902
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 905
    move-result v6

    .line 906
    if-nez v6, :cond_18

    .line 908
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 910
    invoke-virtual {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleMobileData(I)Z

    .line 913
    move-result v6

    .line 914
    if-nez v6, :cond_18

    .line 916
    const p1, 0x1040cab

    .line 919
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 922
    move-result-object v0

    .line 923
    invoke-virtual {v5, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 926
    move-result-object p1

    .line 927
    goto :goto_11

    .line 928
    :cond_18
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 931
    move-result v0

    .line 932
    if-ne v0, v1, :cond_1c

    .line 934
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 936
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleWifi(I)Z

    .line 939
    move-result v0

    .line 940
    if-eqz v0, :cond_19

    .line 942
    goto :goto_12

    .line 943
    :cond_19
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 945
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleMobileData(I)Z

    .line 948
    move-result p1

    .line 949
    if-eqz p1, :cond_1b

    .line 951
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    .line 954
    move-result-object p1

    .line 955
    array-length v0, p1

    .line 956
    :goto_10
    if-ge v2, v0, :cond_1b

    .line 958
    aget-object v4, p1, v2

    .line 960
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    .line 963
    move-result v4

    .line 964
    if-nez v4, :cond_1a

    .line 966
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 968
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 971
    move-result-object v4

    .line 972
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    .line 975
    move-result v4

    .line 976
    if-eqz v4, :cond_1a

    .line 978
    goto :goto_12

    .line 979
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 981
    goto :goto_10

    .line 982
    :cond_1b
    const p1, 0x1040cac

    .line 985
    filled-new-array {v3, v3}, [Ljava/lang/Object;

    .line 988
    move-result-object v0

    .line 989
    invoke-virtual {v5, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 992
    move-result-object p1

    .line 993
    goto :goto_11

    .line 994
    :cond_1c
    const-string p1, ""

    .line 996
    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 999
    move-result v0

    .line 1000
    if-nez v0, :cond_1d

    .line 1002
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1004
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1007
    move-result-object p0

    .line 1008
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1011
    goto :goto_12

    .line 1012
    :catch_5
    move-exception p0

    .line 1013
    const-string p1, "NetworkPolicy"

    .line 1015
    const-string/jumbo v0, "handleCheckFireWallPermission"

    .line 1018
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    :cond_1d
    :goto_12
    return v1

    .line 1022
    :cond_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1024
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1026
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1028
    check-cast p1, Ljava/lang/Boolean;

    .line 1030
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1032
    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1034
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1037
    move-result v5

    .line 1038
    move v6, v2

    .line 1039
    :goto_13
    if-ge v6, v5, :cond_1f

    .line 1041
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1043
    iget-object v7, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1045
    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1048
    move-result-object v7

    .line 1049
    check-cast v7, Landroid/net/INetworkPolicyListener;

    .line 1051
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1053
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    :try_start_f
    invoke-interface {v7, v0, v4}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6

    .line 1059
    :catch_6
    add-int/lit8 v6, v6, 0x1

    .line 1061
    goto :goto_13

    .line 1062
    :cond_1f
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1064
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1066
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1069
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1072
    move-result p1

    .line 1073
    if-eqz p1, :cond_20

    .line 1075
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1077
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1079
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1082
    move-result-object p1

    .line 1083
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 1086
    move-result-object p1

    .line 1087
    if-eqz p1, :cond_20

    .line 1089
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1092
    move-result v0

    .line 1093
    array-length v4, p1

    .line 1094
    :goto_14
    if-ge v2, v4, :cond_20

    .line 1096
    aget-object v5, p1, v2

    .line 1098
    new-instance v6, Landroid/content/Intent;

    .line 1100
    const-string v7, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 1102
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1111
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1113
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 1116
    move-result-object v7

    .line 1117
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1120
    add-int/lit8 v2, v2, 0x1

    .line 1122
    goto :goto_14

    .line 1123
    :cond_20
    return v1

    .line 1124
    :cond_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1126
    move-object v3, p1

    .line 1127
    check-cast v3, Ljava/lang/String;

    .line 1129
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    :try_start_10
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 1136
    invoke-interface {p1, v3}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_8

    .line 1139
    goto :goto_15

    .line 1140
    :catch_7
    move-exception p1

    .line 1141
    const-string v0, "NetworkPolicy"

    .line 1143
    const-string/jumbo v2, "problem removing interface quota"

    .line 1146
    invoke-static {v0, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    :catch_8
    :goto_15
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1151
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 1153
    const-wide/16 v4, -0x1

    .line 1155
    const-wide/16 v6, -0x1

    .line 1157
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/NetworkStatsManager;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V

    .line 1160
    return v1

    .line 1161
    :cond_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1163
    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;

    .line 1165
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1167
    iget-object v2, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    .line 1169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1172
    :try_start_11
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 1174
    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_a

    .line 1177
    goto :goto_16

    .line 1178
    :catch_9
    move-exception v0

    .line 1179
    const-string v2, "NetworkPolicy"

    .line 1181
    const-string/jumbo v3, "problem removing interface quota"

    .line 1184
    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    :catch_a
    :goto_16
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1189
    iget-object v2, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    .line 1191
    iget-wide v3, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    .line 1193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1196
    :try_start_12
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 1198
    invoke-interface {v0, v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_c

    .line 1201
    goto :goto_17

    .line 1202
    :catch_b
    move-exception v0

    .line 1203
    const-string v2, "NetworkPolicy"

    .line 1205
    const-string/jumbo v3, "problem setting interface quota"

    .line 1208
    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1211
    :catch_c
    :goto_17
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1213
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 1215
    iget-object v3, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    .line 1217
    iget-wide v4, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->warning:J

    .line 1219
    iget-wide v6, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    .line 1221
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/NetworkStatsManager;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V

    .line 1224
    return v1

    .line 1225
    :cond_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1227
    check-cast p1, Ljava/lang/Long;

    .line 1229
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 1232
    move-result-wide v2

    .line 1233
    const-wide/16 v4, 0x3e8

    .line 1235
    div-long/2addr v2, v4

    .line 1236
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1238
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 1240
    invoke-virtual {p0, v2, v3}, Landroid/app/usage/NetworkStatsManager;->setDefaultGlobalAlert(J)V

    .line 1243
    return v1

    .line 1244
    :cond_24
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1246
    if-eqz p1, :cond_25

    .line 1248
    move p1, v1

    .line 1249
    goto :goto_18

    .line 1250
    :cond_25
    move p1, v2

    .line 1251
    :goto_18
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1253
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1255
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1258
    move-result v0

    .line 1259
    :goto_19
    if-ge v2, v0, :cond_26

    .line 1261
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1263
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1265
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1268
    move-result-object v4

    .line 1269
    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 1271
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1273
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1276
    :try_start_13
    invoke-interface {v4, p1}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_d

    .line 1279
    :catch_d
    add-int/lit8 v2, v2, 0x1

    .line 1281
    goto :goto_19

    .line 1282
    :cond_26
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1284
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1286
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1289
    new-instance p1, Landroid/content/Intent;

    .line 1291
    const-string v0, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 1293
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1299
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1301
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1303
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1305
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1308
    return v1

    .line 1309
    :cond_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1311
    check-cast p1, Ljava/lang/String;

    .line 1313
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1315
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    .line 1317
    monitor-enter v0

    .line 1318
    :try_start_14
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1320
    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 1322
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1325
    move-result p1

    .line 1326
    if-nez p1, :cond_28

    .line 1328
    monitor-exit v0

    .line 1329
    return v1

    .line 1330
    :catchall_6
    move-exception p0

    .line 1331
    goto :goto_1a

    .line 1332
    :cond_28
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 1333
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1335
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 1337
    invoke-virtual {p1}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 1340
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1342
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 1344
    monitor-enter p1

    .line 1345
    :try_start_15
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1347
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1350
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1352
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1355
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1357
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1360
    monitor-exit p1

    .line 1361
    return v1

    .line 1362
    :catchall_7
    move-exception p0

    .line 1363
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1364
    throw p0

    .line 1365
    :goto_1a
    :try_start_16
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 1366
    throw p0

    .line 1367
    :cond_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1369
    check-cast p1, [Ljava/lang/String;

    .line 1371
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1373
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1375
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1378
    move-result v0

    .line 1379
    :goto_1b
    if-ge v2, v0, :cond_2a

    .line 1381
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1383
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1385
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1388
    move-result-object v3

    .line 1389
    check-cast v3, Landroid/net/INetworkPolicyListener;

    .line 1391
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1393
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1396
    :try_start_17
    invoke-interface {v3, p1}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_e

    .line 1399
    :catch_e
    add-int/lit8 v2, v2, 0x1

    .line 1401
    goto :goto_1b

    .line 1402
    :cond_2a
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1404
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1406
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1409
    return v1

    .line 1410
    :cond_2b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1412
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1414
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 1416
    if-eqz v3, :cond_2c

    .line 1418
    const-string v3, "NetworkPolicy"

    .line 1420
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1422
    const-string v5, "Dispatching rules="

    .line 1424
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1427
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    .line 1430
    move-result-object v5

    .line 1431
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    const-string v5, " for uid="

    .line 1436
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1442
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1445
    move-result-object v4

    .line 1446
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_2c
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1451
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1453
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1456
    move-result v3

    .line 1457
    :goto_1c
    if-ge v2, v3, :cond_2d

    .line 1459
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1461
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1463
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1466
    move-result-object v4

    .line 1467
    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 1469
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1471
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1474
    :try_start_18
    invoke-interface {v4, v0, p1}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_f

    .line 1477
    :catch_f
    add-int/lit8 v2, v2, 0x1

    .line 1479
    goto :goto_1c

    .line 1480
    :cond_2d
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1482
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1484
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1487
    return v1

    .line 1488
    nop

    .line 1489
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 8
    iget p1, p1, Landroid/os/Message;->what:I

    .line 10
    const/16 v1, 0x64

    .line 12
    const/4 v7, 0x1

    .line 13
    const-wide/32 v8, 0x200000

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq p1, v1, :cond_3

    .line 19
    const/16 v1, 0x65

    .line 21
    if-eq p1, v1, :cond_0

    .line 23
    move v7, v2

    .line 24
    goto/16 :goto_4

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string/jumbo p1, "onUidGone"

    .line 34
    invoke-static {v8, v9, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 39
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 48
    monitor-exit p1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 55
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)Z

    .line 59
    move-result v1

    .line 60
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    if-eqz v1, :cond_2

    .line 63
    :try_start_4
    invoke-virtual {p0, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    goto :goto_0

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 72
    goto :goto_4

    .line 73
    :catchall_2
    move-exception p0

    .line 74
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 75
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 76
    :goto_1
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 77
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 78
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 81
    throw p0

    .line 82
    :cond_3
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    const-string/jumbo p1, "onUidStateChanged"

    .line 90
    invoke-static {v8, v9, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 93
    :try_start_9
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 95
    monitor-enter p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 96
    :try_start_a
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    .line 104
    if-nez v1, :cond_4

    .line 106
    monitor-exit p1

    .line 107
    goto :goto_3

    .line 108
    :catchall_3
    move-exception p0

    .line 109
    goto :goto_5

    .line 110
    :cond_4
    iget v10, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 112
    iget-wide v11, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    .line 114
    iget v13, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    .line 116
    iput-boolean v2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    .line 118
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 119
    :try_start_b
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 121
    monitor-enter p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 122
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 124
    move v2, v0

    .line 125
    move v3, v10

    .line 126
    move v4, v13

    .line 127
    move-wide v5, v11

    .line 128
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIIJ)V

    .line 131
    move-object v1, p0

    .line 132
    move v2, v0

    .line 133
    move v3, v10

    .line 134
    move v4, v13

    .line 135
    move-wide v5, v11

    .line 136
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(IIIJ)Z

    .line 139
    move-result v1

    .line 140
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 142
    invoke-virtual {v2, v0, v11, v12}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    .line 145
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 146
    if-eqz v1, :cond_5

    .line 148
    :try_start_d
    invoke-static {v10, v13}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    .line 151
    move-result p1

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 155
    goto :goto_3

    .line 156
    :catchall_4
    move-exception p0

    .line 157
    goto :goto_6

    .line 158
    :cond_5
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 161
    :goto_4
    return v7

    .line 162
    :catchall_5
    move-exception p0

    .line 163
    :try_start_e
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 164
    :try_start_f
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 165
    :goto_5
    :try_start_10
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 166
    :try_start_11
    throw p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 167
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 170
    throw p0

    .line 171
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$16;->handleMessage$com$android$server$net$NetworkPolicyManagerService$16(Landroid/os/Message;)Z

    .line 174
    move-result p0

    .line 175
    return p0

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
