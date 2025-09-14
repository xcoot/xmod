.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "NetworkAnalytics:Service"

    .line 10
    .line 11
    const-string v2, "Nap Receiver : "

    .line 12
    .line 13
    invoke-static {v2, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_14

    .line 21
    .line 22
    new-instance v1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    invoke-virtual {p0, p2, v2, v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v3, 0x0

    .line 55
    if-eqz v1, :cond_9

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "android.intent.extra.UID"

    .line 72
    .line 73
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    const-string v0, "NetworkAnalytics:Service"

    .line 80
    .line 81
    const-string v1, "ACTION PACKAGE REMOVED packageName : "

    .line 82
    .line 83
    const-string v4, " uid : "

    .line 84
    .line 85
    invoke-static {p1, v1, v3, v4, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 97
    .line 98
    const-string/jumbo v4, "updateHashCache Called"

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_4
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    .line 105
    .line 106
    monitor-enter v1

    .line 107
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_7

    .line 116
    .line 117
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 122
    .line 123
    iget v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    .line 124
    .line 125
    if-ne v6, p1, :cond_5

    .line 126
    .line 127
    iget-object v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_5

    .line 134
    .line 135
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 136
    .line 137
    if-eqz v6, :cond_6

    .line 138
    .line 139
    const-string v6, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 140
    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v8, "DataDelivery hash cache deletion uid:"

    .line 147
    .line 148
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v8, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    .line 152
    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v8, " pacName:"

    .line 157
    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v8, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v8, " procName:"

    .line 167
    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v8, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v8, " trunProcName:"

    .line 177
    .line 178
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v8, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v8, " hash:"

    .line 187
    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v5, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :catchall_0
    move-exception p0

    .line 205
    goto :goto_2

    .line 206
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 212
    .line 213
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 214
    .line 215
    invoke-virtual {p1, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz v3, :cond_14

    .line 220
    .line 221
    if-eqz p1, :cond_14

    .line 222
    .line 223
    const-string p1, "android.intent.extra.REPLACING"

    .line 224
    .line 225
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-eqz p1, :cond_8

    .line 230
    .line 231
    const-string p0, "NetworkAnalytics:Service"

    .line 232
    .line 233
    const-string p1, "The package removal intent has been called before upgrade"

    .line 234
    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_8
    new-instance p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 240
    .line 241
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 242
    .line 243
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 244
    .line 245
    .line 246
    iput-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 247
    .line 248
    iput v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 249
    .line 250
    const/4 p2, 0x6

    .line 251
    invoke-virtual {p0, p2, v2, v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_7

    .line 255
    .line 256
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    throw p0

    .line 258
    :cond_9
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_c

    .line 265
    .line 266
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    if-eqz p1, :cond_a

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    :cond_a
    if-eqz v0, :cond_b

    .line 277
    .line 278
    const-string p1, "NetworkAnalytics:Service"

    .line 279
    .line 280
    const-string v0, "ACTION PACKAGE ADDED packageName : "

    .line 281
    .line 282
    invoke-static {v0, v3, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    const-string p2, "android.intent.extra.UID"

    .line 290
    .line 291
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 300
    .line 301
    iget-object p2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 302
    .line 303
    invoke-virtual {p2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    if-eqz v3, :cond_14

    .line 308
    .line 309
    if-eqz p2, :cond_14

    .line 310
    .line 311
    new-instance p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 312
    .line 313
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 314
    .line 315
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 316
    .line 317
    .line 318
    iput-object v3, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 319
    .line 320
    iput p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 321
    .line 322
    const/4 p1, 0x7

    .line 323
    invoke-virtual {p0, p1, v2, v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_7

    .line 327
    .line 328
    :cond_c
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 329
    .line 330
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_12

    .line 335
    .line 336
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    const-string p2, "android.intent.extra.user_handle"

    .line 341
    .line 342
    const/16 v0, -0x2710

    .line 343
    .line 344
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    if-eq p2, v0, :cond_11

    .line 349
    .line 350
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 351
    .line 352
    if-eqz v0, :cond_d

    .line 353
    .line 354
    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 355
    .line 356
    const-string/jumbo v1, "updateHashCacheForUser Called"

    .line 357
    .line 358
    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    :cond_d
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    .line 363
    .line 364
    monitor-enter v0

    .line 365
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    :cond_e
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_10

    .line 374
    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 380
    .line 381
    iget v4, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->userId:I

    .line 382
    .line 383
    if-ne v4, p2, :cond_e

    .line 384
    .line 385
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 386
    .line 387
    if-eqz v4, :cond_f

    .line 388
    .line 389
    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 390
    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v6, "DataDelivery hash cache user deletion uid:"

    .line 397
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    iget v6, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    .line 402
    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v6, " pacName:"

    .line 407
    .line 408
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    iget-object v6, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v6, " procName:"

    .line 417
    .line 418
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    iget-object v6, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v6, " trunProcName:"

    .line 427
    .line 428
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    iget-object v6, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v6, " hash:"

    .line 437
    .line 438
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    goto :goto_4

    .line 454
    :catchall_1
    move-exception p0

    .line 455
    goto :goto_5

    .line 456
    :cond_f
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 457
    .line 458
    .line 459
    goto :goto_3

    .line 460
    :cond_10
    monitor-exit v0

    .line 461
    goto :goto_6

    .line 462
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 463
    throw p0

    .line 464
    :cond_11
    :goto_6
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 465
    .line 466
    const/16 p2, 0xb

    .line 467
    .line 468
    invoke-virtual {p0, p2, v2, v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    goto :goto_7

    .line 472
    :cond_12
    const-string/jumbo v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    if-eqz p1, :cond_14

    .line 480
    .line 481
    if-eqz v0, :cond_13

    .line 482
    .line 483
    const-string p1, "NetworkAnalytics:Service"

    .line 484
    .line 485
    const-string v0, "EMERGENCY_STATE_CHANGED received"

    .line 486
    .line 487
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 495
    .line 496
    const/16 p2, 0xc

    .line 497
    .line 498
    invoke-virtual {p0, p2, v2, v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    :cond_14
    :goto_7
    return-void
.end method
