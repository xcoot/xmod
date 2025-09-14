.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Landroid/os/Bundle;

    .line 8
    .line 9
    iget v1, v1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    const/4 v4, -0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const/16 v6, 0x11

    .line 14
    .line 15
    const/4 v7, 0x6

    .line 16
    const/16 v8, 0xa

    .line 17
    .line 18
    const/4 v9, 0x2

    .line 19
    const/16 v10, -0x2710

    .line 20
    .line 21
    const/4 v11, 0x1

    .line 22
    const/4 v12, 0x5

    .line 23
    const/4 v13, 0x0

    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_12

    .line 28
    .line 29
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 30
    .line 31
    const-string/jumbo v0, "sending config removed broadcast to authorized package "

    .line 32
    .line 33
    .line 34
    const-string/jumbo v3, "config removed by end-user is triggered for authorized package "

    .line 35
    .line 36
    .line 37
    const-string/jumbo v4, "sending config removed broadcast to registered package "

    .line 38
    .line 39
    .line 40
    const-string/jumbo v5, "config removed by end-user is triggered for registered package "

    .line 41
    .line 42
    .line 43
    monitor-enter v1

    .line 44
    :try_start_0
    const-string/jumbo v6, "uid"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 56
    .line 57
    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 73
    .line 74
    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    if-eqz v8, :cond_0

    .line 79
    .line 80
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_0

    .line 85
    .line 86
    const-string/jumbo v8, "knoxNwFilter-KnoxNetworkFilterService"

    .line 87
    .line 88
    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v5, " with uid "

    .line 98
    .line 99
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2, v7, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    .line 116
    .line 117
    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v4, " userId "

    .line 127
    .line 128
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v4, " success after config removal event"

    .line 135
    .line 136
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v6, v12, v13, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto :goto_1

    .line 152
    :cond_0
    :goto_0
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 153
    .line 154
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_1

    .line 159
    .line 160
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    iget-object v5, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 170
    .line 171
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    if-eqz v5, :cond_1

    .line 176
    .line 177
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_1

    .line 182
    .line 183
    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    .line 184
    .line 185
    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v3, " with uid "

    .line 195
    .line 196
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2, v4, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V

    .line 210
    .line 211
    .line 212
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 213
    .line 214
    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v0, " userId "

    .line 224
    .line 225
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v0, " success after config removal event"

    .line 232
    .line 233
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v6, v12, v13, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .line 245
    .line 246
    :cond_1
    monitor-exit v1

    .line 247
    goto/16 :goto_12

    .line 248
    .line 249
    :goto_1
    monitor-exit v1

    .line 250
    throw v0

    .line 251
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 252
    .line 253
    const-string/jumbo v0, "user removal is triggered for user "

    .line 254
    .line 255
    .line 256
    monitor-enter v1

    .line 257
    :try_start_1
    const-string v12, "android.intent.extra.user_handle"

    .line 258
    .line 259
    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    .line 264
    .line 265
    .line 266
    new-instance v12, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 282
    .line 283
    const-string/jumbo v10, "com.samsung.android.knox.app.networkfilter"

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-static {v2, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    iget-object v10, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 294
    .line 295
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    if-nez v10, :cond_2

    .line 303
    .line 304
    monitor-exit v1

    .line 305
    goto/16 :goto_12

    .line 306
    .line 307
    :cond_2
    :try_start_2
    invoke-static {v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 308
    .line 309
    .line 310
    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 311
    if-nez v12, :cond_3

    .line 312
    .line 313
    monitor-exit v1

    .line 314
    goto/16 :goto_12

    .line 315
    .line 316
    :cond_3
    :try_start_3
    iget v14, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    .line 317
    .line 318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 319
    .line 320
    .line 321
    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 322
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-interface {v3, v2, v9, v7, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-interface {v3, v2, v8, v7, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-interface {v3, v2, v8, v6, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-interface {v3, v2}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 348
    .line 349
    .line 350
    :catch_0
    :try_start_5
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :catchall_1
    move-exception v0

    .line 355
    goto/16 :goto_4

    .line 356
    .line 357
    :catchall_2
    move-exception v0

    .line 358
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V

    .line 363
    .line 364
    .line 365
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 366
    .line 367
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 376
    .line 377
    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 378
    .line 379
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    check-cast v6, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 388
    .line 389
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 390
    .line 391
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v15

    .line 395
    invoke-virtual {v7, v15, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    check-cast v7, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 400
    .line 401
    :try_start_6
    invoke-interface {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 402
    .line 403
    .line 404
    :catch_1
    :try_start_7
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 405
    .line 406
    .line 407
    :catch_2
    :try_start_8
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 408
    .line 409
    .line 410
    :catch_3
    :try_start_9
    invoke-interface {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 411
    .line 412
    .line 413
    :catch_4
    :try_start_a
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 414
    .line 415
    .line 416
    :catch_5
    :try_start_b
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 417
    .line 418
    .line 419
    :catch_6
    :try_start_c
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopHttpProxyServer()I

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 423
    .line 424
    .line 425
    move-result-object v15

    .line 426
    invoke-interface {v15, v2, v4}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 427
    .line 428
    .line 429
    :catch_7
    :try_start_d
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 430
    .line 431
    .line 432
    move-result-object v15

    .line 433
    invoke-interface {v15, v2}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    .line 434
    .line 435
    .line 436
    move-result v15

    .line 437
    invoke-virtual {v1, v15}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 441
    .line 442
    .line 443
    move-result-object v15

    .line 444
    invoke-interface {v15, v2}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 448
    .line 449
    .line 450
    move-result-object v15

    .line 451
    invoke-interface {v15, v2, v4}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 455
    .line 456
    .line 457
    move-result-object v15

    .line 458
    invoke-interface {v15, v0}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 459
    .line 460
    .line 461
    :catch_8
    :try_start_e
    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    .line 462
    .line 463
    aget-object v0, v0, v13

    .line 464
    .line 465
    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 466
    .line 467
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-eq v0, v4, :cond_4

    .line 475
    .line 476
    invoke-virtual {v1, v0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 477
    .line 478
    .line 479
    :cond_4
    invoke-virtual {v1, v14, v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 480
    .line 481
    .line 482
    if-nez v2, :cond_5

    .line 483
    .line 484
    const/16 v0, 0x270f

    .line 485
    .line 486
    invoke-virtual {v1, v11, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 487
    .line 488
    .line 489
    :cond_5
    iget-object v0, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    if-eqz v4, :cond_6

    .line 500
    .line 501
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    check-cast v4, Ljava/lang/Integer;

    .line 506
    .line 507
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    invoke-virtual {v1, v4, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 512
    .line 513
    .line 514
    goto :goto_3

    .line 515
    :cond_6
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedDOTBlockRules(I)V

    .line 521
    .line 522
    .line 523
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V

    .line 534
    .line 535
    .line 536
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 537
    .line 538
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    .line 542
    .line 543
    .line 544
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V

    .line 550
    .line 551
    .line 552
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V

    .line 558
    .line 559
    .line 560
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v2, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 566
    .line 567
    .line 568
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V

    .line 574
    .line 575
    .line 576
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    invoke-static {v2, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 582
    .line 583
    .line 584
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 585
    .line 586
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V

    .line 590
    .line 591
    .line 592
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 598
    .line 599
    .line 600
    :try_start_f
    invoke-interface {v3, v10, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    invoke-interface {v6, v10, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    invoke-interface {v7, v10, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 607
    .line 608
    .line 609
    :catch_9
    :try_start_10
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 610
    .line 611
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V

    .line 615
    .line 616
    .line 617
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 618
    .line 619
    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeVendorInfoFromStorage(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unRegisterFilterList()V

    .line 623
    .line 624
    .line 625
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 626
    .line 627
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeIpTableChains(I)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    .line 634
    .line 635
    .line 636
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 637
    .line 638
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 639
    .line 640
    .line 641
    monitor-exit v1

    .line 642
    goto/16 :goto_12

    .line 643
    .line 644
    :goto_4
    monitor-exit v1

    .line 645
    throw v0

    .line 646
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 647
    .line 648
    monitor-enter v1

    .line 649
    :try_start_11
    const-string/jumbo v0, "userId"

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 653
    .line 654
    .line 655
    move-result v0

    .line 656
    const-string/jumbo v3, "package"

    .line 657
    .line 658
    .line 659
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 664
    .line 665
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    iget-object v10, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 673
    .line 674
    const-string/jumbo v14, "com.samsung.android.knox.app.networkfilter"

    .line 675
    .line 676
    .line 677
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    .line 679
    .line 680
    invoke-static {v0, v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 681
    .line 682
    .line 683
    move-result v10

    .line 684
    iget-object v14, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 685
    .line 686
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v14

    .line 693
    if-eqz v14, :cond_b

    .line 694
    .line 695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 696
    .line 697
    .line 698
    move-result-wide v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 699
    :try_start_12
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 700
    .line 701
    .line 702
    move-result-object v12

    .line 703
    invoke-interface {v12, v0, v9, v7, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 707
    .line 708
    .line 709
    move-result-object v12

    .line 710
    invoke-interface {v12, v0, v8, v7, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 714
    .line 715
    .line 716
    move-result-object v7

    .line 717
    invoke-interface {v7, v0, v8, v6, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 721
    .line 722
    .line 723
    move-result-object v6

    .line 724
    invoke-interface {v6, v0}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 725
    .line 726
    .line 727
    :catch_a
    :try_start_13
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    .line 729
    .line 730
    goto :goto_5

    .line 731
    :catchall_3
    move-exception v0

    .line 732
    goto/16 :goto_11

    .line 733
    .line 734
    :catchall_4
    move-exception v0

    .line 735
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    .line 737
    .line 738
    throw v0

    .line 739
    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 740
    .line 741
    .line 742
    :try_start_14
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 743
    .line 744
    .line 745
    move-result-object v6

    .line 746
    invoke-interface {v6, v0}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    .line 747
    .line 748
    .line 749
    move-result v6

    .line 750
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 754
    .line 755
    .line 756
    move-result-object v6

    .line 757
    invoke-interface {v6, v0}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 761
    .line 762
    .line 763
    move-result-object v6

    .line 764
    invoke-interface {v6, v0, v4}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 768
    .line 769
    .line 770
    move-result-object v6

    .line 771
    invoke-interface {v6, v10}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 772
    .line 773
    .line 774
    :catch_b
    :try_start_15
    sget-object v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    .line 775
    .line 776
    aget-object v6, v6, v13

    .line 777
    .line 778
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 779
    .line 780
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    .line 782
    .line 783
    invoke-static {v0, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 784
    .line 785
    .line 786
    move-result v6

    .line 787
    if-eq v6, v4, :cond_7

    .line 788
    .line 789
    invoke-virtual {v1, v6, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 790
    .line 791
    .line 792
    :cond_7
    invoke-virtual {v1, v3, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 793
    .line 794
    .line 795
    if-nez v0, :cond_8

    .line 796
    .line 797
    const/16 v6, 0x270f

    .line 798
    .line 799
    invoke-virtual {v1, v11, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 800
    .line 801
    .line 802
    :cond_8
    invoke-static {v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 803
    .line 804
    .line 805
    move-result-object v6

    .line 806
    if-eqz v6, :cond_9

    .line 807
    .line 808
    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 809
    .line 810
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 811
    .line 812
    .line 813
    move-result-object v6

    .line 814
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 815
    .line 816
    .line 817
    move-result v7

    .line 818
    if-eqz v7, :cond_9

    .line 819
    .line 820
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v7

    .line 824
    check-cast v7, Ljava/lang/Integer;

    .line 825
    .line 826
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 827
    .line 828
    .line 829
    move-result v7

    .line 830
    invoke-virtual {v1, v7, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 831
    .line 832
    .line 833
    goto :goto_6

    .line 834
    :cond_9
    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 835
    .line 836
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedDOTBlockRules(I)V

    .line 840
    .line 841
    .line 842
    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 843
    .line 844
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    .line 848
    .line 849
    .line 850
    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 851
    .line 852
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 853
    .line 854
    .line 855
    move-result-object v7

    .line 856
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v6

    .line 860
    check-cast v6, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 861
    .line 862
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 863
    .line 864
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 865
    .line 866
    .line 867
    move-result-object v11

    .line 868
    invoke-virtual {v7, v11, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v7

    .line 872
    check-cast v7, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 873
    .line 874
    iget-object v11, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 875
    .line 876
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 877
    .line 878
    .line 879
    move-result-object v12

    .line 880
    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v11

    .line 884
    check-cast v11, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 885
    .line 886
    :try_start_16
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 887
    .line 888
    .line 889
    goto :goto_7

    .line 890
    :catch_c
    :try_start_17
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    .line 891
    .line 892
    .line 893
    const-string/jumbo v15, "handleUnregisterOperation:dns:error occured remote service null"

    .line 894
    .line 895
    .line 896
    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .line 898
    .line 899
    goto :goto_7

    .line 900
    :catch_d
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    .line 901
    .line 902
    .line 903
    const-string/jumbo v15, "handleUnregisterOperation:dns:error occured while communicating to remote service"

    .line 904
    .line 905
    .line 906
    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .line 908
    .line 909
    :goto_7
    iget-object v12, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 910
    .line 911
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 912
    .line 913
    .line 914
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 915
    .line 916
    .line 917
    :try_start_18
    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 918
    .line 919
    .line 920
    goto :goto_8

    .line 921
    :catch_e
    :try_start_19
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    .line 922
    .line 923
    .line 924
    const-string/jumbo v15, "handleUnregisterOperation:tcp:error occured remote service null"

    .line 925
    .line 926
    .line 927
    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    goto :goto_8

    .line 931
    :catch_f
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    .line 932
    .line 933
    .line 934
    const-string/jumbo v15, "handleUnregisterOperation:tcp:error occured while communicating to remote service"

    .line 935
    .line 936
    .line 937
    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    .line 939
    .line 940
    :goto_8
    iget-object v12, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 941
    .line 942
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 946
    .line 947
    .line 948
    :try_start_1a
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_10
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 949
    .line 950
    .line 951
    goto :goto_9

    .line 952
    :catch_10
    :try_start_1b
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    .line 953
    .line 954
    .line 955
    const-string/jumbo v15, "handleUnregisterOperation:udp:error occured remote service null"

    .line 956
    .line 957
    .line 958
    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .line 960
    .line 961
    goto :goto_9

    .line 962
    :catch_11
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    .line 963
    .line 964
    .line 965
    const-string/jumbo v15, "handleUnregisterOperation:udp:error occured while communicating to remote service"

    .line 966
    .line 967
    .line 968
    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .line 970
    .line 971
    :goto_9
    iget-object v12, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 972
    .line 973
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    .line 975
    .line 976
    invoke-static {v0, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 977
    .line 978
    .line 979
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 980
    .line 981
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 982
    .line 983
    .line 984
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 985
    .line 986
    .line 987
    :try_start_1c
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_12
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 988
    .line 989
    .line 990
    goto :goto_a

    .line 991
    :catch_12
    :try_start_1d
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    .line 992
    .line 993
    .line 994
    const-string/jumbo v12, "handleUnregisterOperation:dns:v6:error occured remote service null"

    .line 995
    .line 996
    .line 997
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .line 999
    .line 1000
    goto :goto_a

    .line 1001
    :catch_13
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1002
    .line 1003
    .line 1004
    const-string/jumbo v12, "handleUnregisterOperation:dns:v6:error occured while communicating to remote service"

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    .line 1009
    .line 1010
    :goto_a
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 1011
    .line 1012
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    .line 1014
    .line 1015
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectV6DnsQueryRules(I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 1016
    .line 1017
    .line 1018
    :try_start_1e
    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_14
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 1019
    .line 1020
    .line 1021
    goto :goto_b

    .line 1022
    :catch_14
    :try_start_1f
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1023
    .line 1024
    .line 1025
    const-string/jumbo v12, "handleUnregisterOperation:tcp:V6:error occured remote service null"

    .line 1026
    .line 1027
    .line 1028
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .line 1030
    .line 1031
    goto :goto_b

    .line 1032
    :catch_15
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1033
    .line 1034
    .line 1035
    const-string/jumbo v12, "handleUnregisterOperation:tcp:V6:error occured while communicating to remote service"

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    :goto_b
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 1042
    .line 1043
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1044
    .line 1045
    .line 1046
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 1047
    .line 1048
    .line 1049
    :try_start_20
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_16
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 1050
    .line 1051
    .line 1052
    goto :goto_c

    .line 1053
    :catch_16
    :try_start_21
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1054
    .line 1055
    .line 1056
    const-string/jumbo v12, "handleUnregisterOperation:udp:V6:error occured remote service null"

    .line 1057
    .line 1058
    .line 1059
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .line 1061
    .line 1062
    goto :goto_c

    .line 1063
    :catch_17
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1064
    .line 1065
    .line 1066
    const-string/jumbo v12, "handleUnregisterOperation:udp:V6:error occured while communicating to remote service"

    .line 1067
    .line 1068
    .line 1069
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    .line 1071
    .line 1072
    :goto_c
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 1073
    .line 1074
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1075
    .line 1076
    .line 1077
    invoke-static {v0, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 1078
    .line 1079
    .line 1080
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 1081
    .line 1082
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1083
    .line 1084
    .line 1085
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 1086
    .line 1087
    .line 1088
    :try_start_22
    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopHttpProxyServer()I

    .line 1089
    .line 1090
    .line 1091
    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v8
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_18
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    .line 1095
    :try_start_23
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v9

    .line 1099
    invoke-interface {v9, v0, v4}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_1a
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    .line 1100
    .line 1101
    .line 1102
    goto :goto_f

    .line 1103
    :catch_18
    move-object v8, v5

    .line 1104
    goto :goto_d

    .line 1105
    :catch_19
    move-object v8, v5

    .line 1106
    goto :goto_e

    .line 1107
    :catch_1a
    :goto_d
    :try_start_24
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1108
    .line 1109
    .line 1110
    const-string/jumbo v9, "handleUnregisterOperation:tcp:http:error occured remote service null"

    .line 1111
    .line 1112
    .line 1113
    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    .line 1115
    .line 1116
    goto :goto_f

    .line 1117
    :catch_1b
    :goto_e
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1118
    .line 1119
    .line 1120
    const-string/jumbo v9, "handleUnregisterOperation:tcp:http:error occured while communicating to remote service"

    .line 1121
    .line 1122
    .line 1123
    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .line 1125
    .line 1126
    :goto_f
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 1127
    .line 1128
    invoke-virtual {v4, v14, v8, v13, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 1132
    .line 1133
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    .line 1135
    .line 1136
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    .line 1137
    .line 1138
    .line 1139
    :try_start_25
    invoke-interface {v6, v14, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    .line 1141
    .line 1142
    invoke-interface {v11, v14, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    .line 1144
    .line 1145
    invoke-interface {v7, v14, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_1c
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 1146
    .line 1147
    .line 1148
    goto :goto_10

    .line 1149
    :catch_1c
    :try_start_26
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1150
    .line 1151
    .line 1152
    const-string/jumbo v5, "handleUnregisterOperation:setConfig:error occured remote service null"

    .line 1153
    .line 1154
    .line 1155
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    .line 1157
    .line 1158
    goto :goto_10

    .line 1159
    :catch_1d
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1160
    .line 1161
    .line 1162
    const-string/jumbo v5, "handleUnregisterOperation:setConfig:error occured while communicating to remote service"

    .line 1163
    .line 1164
    .line 1165
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    .line 1167
    .line 1168
    :goto_10
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 1169
    .line 1170
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1171
    .line 1172
    .line 1173
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V

    .line 1174
    .line 1175
    .line 1176
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 1177
    .line 1178
    invoke-virtual {v4, v3, v2, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 1179
    .line 1180
    .line 1181
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 1182
    .line 1183
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1184
    .line 1185
    .line 1186
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 1187
    .line 1188
    const-string/jumbo v4, "com.samsung.android.knox.app.networkfilter"

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v3, v10, v4, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 1192
    .line 1193
    .line 1194
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 1195
    .line 1196
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1197
    .line 1198
    .line 1199
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 1200
    .line 1201
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1202
    .line 1203
    .line 1204
    invoke-static {v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    if-eqz v3, :cond_a

    .line 1209
    .line 1210
    const/4 v4, 0x5

    .line 1211
    iput v4, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 1212
    .line 1213
    :cond_a
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 1214
    .line 1215
    invoke-virtual {v3, v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeVendorInfoFromStorage(Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unRegisterFilterList()V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unbindInternalProxyServices(I)V

    .line 1222
    .line 1223
    .line 1224
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 1225
    .line 1226
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1227
    .line 1228
    .line 1229
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeIpTableChains(I)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    .line 1233
    .line 1234
    .line 1235
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 1236
    .line 1237
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1238
    .line 1239
    .line 1240
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1241
    .line 1242
    .line 1243
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    .line 1247
    .line 1248
    const-string/jumbo v5, "sending unregister broadcast to package "

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    const-string v5, " userId "

    .line 1258
    .line 1259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    const-string v5, " success during unregister process"

    .line 1266
    .line 1267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v4

    .line 1274
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    .line 1276
    .line 1277
    const/4 v3, 0x4

    .line 1278
    invoke-virtual {v1, v0, v3, v13, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    .line 1279
    .line 1280
    .line 1281
    monitor-exit v1

    .line 1282
    goto/16 :goto_12

    .line 1283
    .line 1284
    :goto_11
    monitor-exit v1

    .line 1285
    throw v0

    .line 1286
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1287
    .line 1288
    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleRegisterOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    .line 1289
    .line 1290
    .line 1291
    goto/16 :goto_12

    .line 1292
    .line 1293
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1294
    .line 1295
    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleStopFilteringOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    .line 1296
    .line 1297
    .line 1298
    goto/16 :goto_12

    .line 1299
    .line 1300
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1301
    .line 1302
    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleStartFilteringOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    .line 1303
    .line 1304
    .line 1305
    goto :goto_12

    .line 1306
    :pswitch_6
    const-string/jumbo v1, "reason"

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v2, v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1310
    .line 1311
    .line 1312
    move-result v1

    .line 1313
    const/4 v2, 0x5

    .line 1314
    if-ne v1, v2, :cond_c

    .line 1315
    .line 1316
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 1317
    .line 1318
    .line 1319
    const-string/jumbo v2, "ultra power saving mode has been disabled"

    .line 1320
    .line 1321
    .line 1322
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    .line 1324
    .line 1325
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1326
    .line 1327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1328
    .line 1329
    .line 1330
    goto :goto_12

    .line 1331
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1332
    .line 1333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1334
    .line 1335
    .line 1336
    goto :goto_12

    .line 1337
    :pswitch_8
    const-string v1, "android.intent.extra.user_handle"

    .line 1338
    .line 1339
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1340
    .line 1341
    .line 1342
    move-result v1

    .line 1343
    iget-object v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1344
    .line 1345
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 1346
    .line 1347
    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 1348
    .line 1349
    .line 1350
    iget-object v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1351
    .line 1352
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 1353
    .line 1354
    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v2

    .line 1358
    if-nez v2, :cond_c

    .line 1359
    .line 1360
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1361
    .line 1362
    invoke-static {v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionLockBootCompleted(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V

    .line 1363
    .line 1364
    .line 1365
    goto :goto_12

    .line 1366
    :pswitch_9
    const-string v1, "android.intent.extra.user_handle"

    .line 1367
    .line 1368
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1369
    .line 1370
    .line 1371
    move-result v1

    .line 1372
    iget-object v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1373
    .line 1374
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 1375
    .line 1376
    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 1377
    .line 1378
    .line 1379
    iget-object v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1380
    .line 1381
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 1382
    .line 1383
    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v2

    .line 1387
    if-nez v2, :cond_c

    .line 1388
    .line 1389
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1390
    .line 1391
    invoke-static {v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionBootComplete(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V

    .line 1392
    .line 1393
    .line 1394
    goto :goto_12

    .line 1395
    :pswitch_a
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1396
    .line 1397
    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionClearData(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    .line 1398
    .line 1399
    .line 1400
    goto :goto_12

    .line 1401
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1402
    .line 1403
    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionPackageRemoved(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    .line 1404
    .line 1405
    .line 1406
    goto :goto_12

    .line 1407
    :pswitch_c
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 1408
    .line 1409
    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionPackageAdded(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    .line 1410
    .line 1411
    .line 1412
    :cond_c
    :goto_12
    return-void

    .line 1413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
