.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "KnoxNetworkEventService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "handleMessage called msg.what = "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget v2, p1, Landroid/os/Message;->what:I

    .line 13
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    check-cast v0, Landroid/os/Bundle;

    .line 20
    iget p1, p1, Landroid/os/Message;->what:I

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq p1, v1, :cond_6

    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq p1, v1, :cond_2

    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq p1, v1, :cond_0

    .line 31
    goto/16 :goto_9

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 35
    const-string/jumbo p1, "handleActionUserRemoved for user: "

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    const-string v1, "android.intent.extra.user_handle"

    .line 41
    const/16 v2, -0x2710

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 46
    move-result v0

    .line 47
    const-string v1, "KnoxNetworkEventService"

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v0

    .line 70
    check-cast p1, Ljava/util/HashSet;

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 75
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-nez p1, :cond_1

    .line 78
    monitor-exit p0

    .line 79
    goto/16 :goto_9

    .line 81
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 83
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->INSECURE_PORTS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 91
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 93
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 101
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 103
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    monitor-exit p0

    .line 112
    goto/16 :goto_9

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    monitor-exit p0

    .line 116
    throw p1

    .line 117
    :cond_2
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 119
    monitor-enter p0

    .line 120
    :try_start_2
    const-string/jumbo p1, "eventType"

    .line 123
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 126
    move-result p1

    .line 127
    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v1

    .line 133
    check-cast v0, Ljava/util/HashSet;

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 140
    const/16 v1, 0xf

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v1

    .line 146
    check-cast v0, Ljava/util/HashSet;

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 156
    const/16 v1, 0x10

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v1

    .line 162
    check-cast v0, Ljava/util/HashSet;

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->unregisterSystemDefaultNetworkCallback()V

    .line 173
    goto :goto_0

    .line 174
    :catchall_1
    move-exception p1

    .line 175
    goto :goto_6

    .line 176
    :cond_3
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 179
    goto :goto_1

    .line 180
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 182
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 190
    goto :goto_1

    .line 191
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 193
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 201
    goto :goto_1

    .line 202
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 204
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->INSECURE_PORTS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 212
    :goto_1
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 214
    check-cast p1, Ljava/util/HashSet;

    .line 216
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_5

    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 225
    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    :try_start_3
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    .line 228
    if-eqz p1, :cond_4

    .line 230
    iget-object v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {v2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    goto :goto_2

    .line 236
    :catchall_2
    move-exception p1

    .line 237
    goto :goto_4

    .line 238
    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 241
    :goto_3
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 244
    goto :goto_5

    .line 245
    :catch_0
    :try_start_5
    const-string p1, "KnoxNetworkEventService"

    .line 247
    const-string v2, "Error while trying to unregister the receiver"

    .line 249
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 252
    goto :goto_3

    .line 253
    :goto_4
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 257
    :cond_5
    :goto_5
    monitor-exit p0

    .line 258
    goto/16 :goto_9

    .line 260
    :goto_6
    monitor-exit p0

    .line 261
    throw p1

    .line 262
    :cond_6
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 264
    const-string p1, "Invalid event type - "

    .line 266
    monitor-enter p0

    .line 267
    :try_start_7
    const-string/jumbo v1, "eventType"

    .line 270
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 273
    move-result v0

    .line 274
    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object v2

    .line 280
    check-cast v1, Ljava/util/HashSet;

    .line 282
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 285
    packed-switch v0, :pswitch_data_1

    .line 288
    const-string v1, "KnoxNetworkEventService"

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object p1

    .line 302
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    goto :goto_8

    .line 306
    :catchall_3
    move-exception p1

    .line 307
    goto :goto_a

    .line 308
    :pswitch_3
    const-string p1, "KnoxNetworkEventService"

    .line 310
    const-string/jumbo v0, "handleStartMonitoring() registerSystemDefaultNetworkCallback()"

    .line 313
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->registerSystemDefaultNetworkCallback()V

    .line 319
    goto :goto_8

    .line 320
    :pswitch_4
    const-string p1, "KnoxNetworkEventService"

    .line 322
    const-string/jumbo v0, "handleStartMonitoring() insertRuleForInsecurePorts()"

    .line 325
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    .line 330
    check-cast p1, Ljava/util/HashSet;

    .line 332
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 335
    move-result-object p1

    .line 336
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_7

    .line 342
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Ljava/lang/Integer;

    .line 348
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 351
    move-result v0

    .line 352
    const-string v1, "KnoxNetworkEventService"

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    .line 356
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    const-string/jumbo v3, "handleStartMonitoring() insertRuleForInsecurePorts userId = "

    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object v2

    .line 372
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 377
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRuleForInsecurePorts(I)V

    .line 383
    goto :goto_7

    .line 384
    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->registerUserActivityReceiver()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 387
    monitor-exit p0

    .line 388
    :goto_9
    return-void

    .line 389
    :goto_a
    monitor-exit p0

    .line 390
    throw p1

    .line 391
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 401
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
