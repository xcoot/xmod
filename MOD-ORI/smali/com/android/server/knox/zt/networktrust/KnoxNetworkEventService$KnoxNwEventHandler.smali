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

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "KnoxNetworkEventService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "handleMessage called msg.what = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/os/Bundle;

    .line 19
    .line 20
    iget p1, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq p1, v1, :cond_6

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq p1, v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq p1, v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_9

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 34
    .line 35
    const-string/jumbo p1, "handleActionUserRemoved for user: "

    .line 36
    .line 37
    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    const-string v1, "android.intent.extra.user_handle"

    .line 40
    .line 41
    const/16 v2, -0x2710

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string v1, "KnoxNetworkEventService"

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast p1, Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-nez p1, :cond_1

    .line 77
    .line 78
    monitor-exit p0

    .line 79
    goto/16 :goto_9

    .line 80
    .line 81
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 82
    .line 83
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->INSECURE_PORTS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 92
    .line 93
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 102
    .line 103
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    monitor-exit p0

    .line 112
    goto/16 :goto_9

    .line 113
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

    .line 118
    .line 119
    monitor-enter p0

    .line 120
    :try_start_2
    const-string/jumbo p1, "eventType"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 128
    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v0, Ljava/util/HashSet;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 139
    .line 140
    const/16 v1, 0xf

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v0, Ljava/util/HashSet;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_3

    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 155
    .line 156
    const/16 v1, 0x10

    .line 157
    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v0, Ljava/util/HashSet;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_3

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->unregisterSystemDefaultNetworkCallback()V

    .line 171
    .line 172
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

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 181
    .line 182
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 192
    .line 193
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 203
    .line 204
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->INSECURE_PORTS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 210
    .line 211
    .line 212
    :goto_1
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 213
    .line 214
    check-cast p1, Ljava/util/HashSet;

    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_5

    .line 221
    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 223
    .line 224
    .line 225
    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    :try_start_3
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    .line 227
    .line 228
    if-eqz p1, :cond_4

    .line 229
    .line 230
    iget-object v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    .line 234
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

    .line 240
    .line 241
    :goto_3
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :catch_0
    :try_start_5
    const-string p1, "KnoxNetworkEventService"

    .line 246
    .line 247
    const-string v2, "Error while trying to unregister the receiver"

    .line 248
    .line 249
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :goto_4
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    .line 255
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

    .line 259
    .line 260
    :goto_6
    monitor-exit p0

    .line 261
    throw p1

    .line 262
    :cond_6
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 263
    .line 264
    const-string p1, "Invalid event type - "

    .line 265
    .line 266
    monitor-enter p0

    .line 267
    :try_start_7
    const-string/jumbo v1, "eventType"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 275
    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    check-cast v1, Ljava/util/HashSet;

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    packed-switch v0, :pswitch_data_1

    .line 286
    .line 287
    .line 288
    const-string v1, "KnoxNetworkEventService"

    .line 289
    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
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

    .line 309
    .line 310
    const-string/jumbo v0, "handleStartMonitoring() registerSystemDefaultNetworkCallback()"

    .line 311
    .line 312
    .line 313
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->registerSystemDefaultNetworkCallback()V

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :pswitch_4
    const-string p1, "KnoxNetworkEventService"

    .line 321
    .line 322
    const-string/jumbo v0, "handleStartMonitoring() insertRuleForInsecurePorts()"

    .line 323
    .line 324
    .line 325
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    .line 329
    .line 330
    check-cast p1, Ljava/util/HashSet;

    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_7

    .line 341
    .line 342
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Ljava/lang/Integer;

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    const-string v1, "KnoxNetworkEventService"

    .line 353
    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    const-string/jumbo v3, "handleStartMonitoring() insertRuleForInsecurePorts userId = "

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRuleForInsecurePorts(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->registerUserActivityReceiver()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 385
    .line 386
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

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
