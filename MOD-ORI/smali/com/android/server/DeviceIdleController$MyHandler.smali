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
    const-string/jumbo v2, "isStationary = "

    .line 6
    .line 7
    .line 8
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    const-string v4, "DeviceIdleController"

    .line 13
    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v6, "handleMessage("

    .line 17
    .line 18
    .line 19
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v6, v1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const-string v7, ")"

    .line 25
    .line 26
    invoke-static {v5, v6, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget v4, v1, Landroid/os/Message;->what:I

    .line 30
    .line 31
    const v5, 0x84d8

    .line 32
    .line 33
    .line 34
    const v6, 0x84d6

    .line 35
    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    packed-switch v4, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    :pswitch_0
    goto/16 :goto_c

    .line 44
    .line 45
    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v7, v9, v7}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->onTempPowerSaveWhitelistChange(IILjava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_c

    .line 55
    .line 56
    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 57
    .line 58
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 59
    .line 60
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 67
    .line 68
    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->onTempPowerSaveWhitelistChange(IILjava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_c

    .line 72
    .line 73
    :pswitch_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 74
    .line 75
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 76
    .line 77
    if-ne v1, v8, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move v8, v7

    .line 81
    :goto_0
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 82
    .line 83
    monitor-enter v3

    .line 84
    :try_start_0
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    new-array v1, v1, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 99
    .line 100
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    array-length v1, v0

    .line 102
    :goto_1
    if-ge v7, v1, :cond_13

    .line 103
    .line 104
    aget-object v3, v0, v7

    .line 105
    .line 106
    if-eqz v8, :cond_2

    .line 107
    .line 108
    invoke-interface {v3, v2}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppAdded(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    invoke-interface {v3, v2}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppRemoved(I)V

    .line 113
    .line 114
    .line 115
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 116
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

    .line 122
    .line 123
    check-cast v0, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 124
    .line 125
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 126
    .line 127
    if-ne v1, v8, :cond_3

    .line 128
    .line 129
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->startMonitoring()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_c

    .line 133
    .line 134
    :cond_3
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->stopMonitoring()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_c

    .line 138
    .line 139
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_c

    .line 145
    .line 146
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v1, Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 149
    .line 150
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 151
    .line 152
    monitor-enter v4

    .line 153
    :try_start_2
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    const-string v5, "DeviceIdleController"

    .line 160
    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    if-nez v1, :cond_4

    .line 177
    .line 178
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    new-array v2, v2, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    move-object v9, v0

    .line 193
    check-cast v9, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 194
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

    .line 200
    .line 201
    array-length v0, v9

    .line 202
    :goto_4
    if-ge v7, v0, :cond_5

    .line 203
    .line 204
    aget-object v2, v9, v7

    .line 205
    .line 206
    invoke-interface {v2, v3}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    .line 207
    .line 208
    .line 209
    add-int/lit8 v7, v7, 0x1

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_5
    if-eqz v1, :cond_13

    .line 213
    .line 214
    invoke-interface {v1, v3}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_c

    .line 218
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

    .line 222
    .line 223
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    const-string v0, "Time to remove uid "

    .line 229
    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 231
    .line 232
    .line 233
    move-result-wide v4

    .line 234
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v3, :cond_6

    .line 239
    .line 240
    const-string v7, "DeviceIdleController"

    .line 241
    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string/jumbo v9, "checkTempAppWhitelistTimeout: uid="

    .line 245
    .line 246
    .line 247
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v9, ", timeNow="

    .line 254
    .line 255
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    :cond_6
    monitor-enter v2

    .line 269
    :try_start_4
    iget-object v7, v2, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 270
    .line 271
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    check-cast v7, Landroid/util/Pair;

    .line 276
    .line 277
    if-nez v7, :cond_7

    .line 278
    .line 279
    monitor-exit v2

    .line 280
    goto/16 :goto_c

    .line 281
    .line 282
    :catchall_2
    move-exception v0

    .line 283
    goto :goto_7

    .line 284
    :cond_7
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v8, Landroid/util/MutableLong;

    .line 287
    .line 288
    iget-wide v8, v8, Landroid/util/MutableLong;->value:J

    .line 289
    .line 290
    cmp-long v8, v4, v8

    .line 291
    .line 292
    if-ltz v8, :cond_8

    .line 293
    .line 294
    iget-object v0, v2, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 295
    .line 296
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v2, v1, v0}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_8
    if-eqz v3, :cond_9

    .line 308
    .line 309
    const-string v3, "DeviceIdleController"

    .line 310
    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v0, ": "

    .line 320
    .line 321
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v0, Landroid/util/MutableLong;

    .line 327
    .line 328
    iget-wide v8, v0, Landroid/util/MutableLong;->value:J

    .line 329
    .line 330
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    :cond_9
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Landroid/util/MutableLong;

    .line 343
    .line 344
    iget-wide v6, v0, Landroid/util/MutableLong;->value:J

    .line 345
    .line 346
    sub-long/2addr v6, v4

    .line 347
    invoke-virtual {v2, v1, v6, v7}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 348
    .line 349
    .line 350
    :goto_6
    monitor-exit v2

    .line 351
    goto/16 :goto_c

    .line 352
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

    .line 356
    .line 357
    check-cast v2, Ljava/lang/String;

    .line 358
    .line 359
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 360
    .line 361
    if-eqz v2, :cond_a

    .line 362
    .line 363
    move-object v3, v2

    .line 364
    goto :goto_8

    .line 365
    :cond_a
    const-string/jumbo v3, "unknown"

    .line 366
    .line 367
    .line 368
    :goto_8
    invoke-static {v6, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 369
    .line 370
    .line 371
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 372
    .line 373
    iget-object v3, v3, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 374
    .line 375
    invoke-virtual {v3, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 380
    .line 381
    iget-object v4, v4, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 382
    .line 383
    invoke-virtual {v4, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    :try_start_5
    iget-object v6, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 388
    .line 389
    iget-object v6, v6, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 390
    .line 391
    invoke-interface {v6, v7}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 392
    .line 393
    .line 394
    iget-object v6, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 395
    .line 396
    iget-object v6, v6, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 397
    .line 398
    invoke-interface {v6, v7, v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 399
    .line 400
    .line 401
    :catch_0
    if-eqz v3, :cond_b

    .line 402
    .line 403
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 404
    .line 405
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 410
    .line 411
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 412
    .line 413
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 414
    .line 415
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    .line 416
    .line 417
    invoke-virtual {v1, v3, v6, v9, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 418
    .line 419
    .line 420
    :cond_b
    if-eqz v4, :cond_c

    .line 421
    .line 422
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 423
    .line 424
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 429
    .line 430
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 431
    .line 432
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 433
    .line 434
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    .line 435
    .line 436
    invoke-virtual {v1, v2, v3, v9, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 437
    .line 438
    .line 439
    :cond_c
    new-array v0, v7, [Ljava/lang/Object;

    .line 440
    .line 441
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 442
    .line 443
    .line 444
    goto/16 :goto_c

    .line 445
    .line 446
    :pswitch_9
    const-string/jumbo v1, "unknown"

    .line 447
    .line 448
    .line 449
    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 450
    .line 451
    .line 452
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 453
    .line 454
    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 455
    .line 456
    invoke-virtual {v1, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 461
    .line 462
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 463
    .line 464
    invoke-virtual {v2, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    :try_start_6
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 469
    .line 470
    iget-object v3, v3, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 471
    .line 472
    invoke-interface {v3, v7}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 473
    .line 474
    .line 475
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 476
    .line 477
    iget-object v3, v3, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 478
    .line 479
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    invoke-interface {v3, v7, v9, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 484
    .line 485
    .line 486
    :catch_1
    if-eqz v1, :cond_d

    .line 487
    .line 488
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 489
    .line 490
    monitor-enter v1

    .line 491
    :try_start_7
    iget v3, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 492
    .line 493
    add-int/2addr v3, v8

    .line 494
    iput v3, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 495
    .line 496
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 497
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 498
    .line 499
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 500
    .line 501
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 502
    .line 503
    iget-object v11, v1, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Lcom/android/server/DeviceIdleController$4;

    .line 504
    .line 505
    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    .line 506
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

    .line 512
    .line 513
    invoke-virtual/range {v9 .. v16}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 514
    .line 515
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

    .line 521
    .line 522
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 523
    .line 524
    monitor-enter v1

    .line 525
    :try_start_9
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 526
    .line 527
    add-int/2addr v2, v8

    .line 528
    iput v2, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 529
    .line 530
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 531
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 532
    .line 533
    iget-object v8, v1, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 534
    .line 535
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 536
    .line 537
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Lcom/android/server/DeviceIdleController$4;

    .line 538
    .line 539
    iget-object v15, v1, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    .line 540
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

    .line 546
    .line 547
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

    .line 553
    .line 554
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 555
    .line 556
    .line 557
    new-array v0, v7, [Ljava/lang/Object;

    .line 558
    .line 559
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 560
    .line 561
    .line 562
    goto/16 :goto_c

    .line 563
    .line 564
    :pswitch_a
    new-array v2, v7, [Ljava/lang/Object;

    .line 565
    .line 566
    const v3, 0x84d3

    .line 567
    .line 568
    .line 569
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 570
    .line 571
    .line 572
    iget v2, v1, Landroid/os/Message;->what:I

    .line 573
    .line 574
    const/4 v3, 0x2

    .line 575
    if-ne v2, v3, :cond_f

    .line 576
    .line 577
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 578
    .line 579
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 580
    .line 581
    invoke-virtual {v2, v8}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 586
    .line 587
    iget-object v4, v4, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 588
    .line 589
    invoke-virtual {v4, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    goto :goto_b

    .line 594
    :cond_f
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 595
    .line 596
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 597
    .line 598
    invoke-virtual {v2, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 603
    .line 604
    iget-object v4, v4, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 605
    .line 606
    invoke-virtual {v4, v8}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    :goto_b
    :try_start_b
    iget-object v5, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 611
    .line 612
    iget-object v5, v5, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 613
    .line 614
    invoke-interface {v5, v8}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 615
    .line 616
    .line 617
    iget-object v5, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 618
    .line 619
    iget-object v5, v5, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 620
    .line 621
    iget v1, v1, Landroid/os/Message;->what:I

    .line 622
    .line 623
    if-ne v1, v3, :cond_10

    .line 624
    .line 625
    move v8, v3

    .line 626
    :cond_10
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    invoke-interface {v5, v8, v9, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    .line 631
    .line 632
    .line 633
    :catch_2
    if-eqz v2, :cond_11

    .line 634
    .line 635
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 636
    .line 637
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 642
    .line 643
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 644
    .line 645
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 646
    .line 647
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    .line 648
    .line 649
    invoke-virtual {v1, v3, v5, v9, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 650
    .line 651
    .line 652
    :cond_11
    if-eqz v4, :cond_12

    .line 653
    .line 654
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 655
    .line 656
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 661
    .line 662
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 663
    .line 664
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 665
    .line 666
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    .line 667
    .line 668
    invoke-virtual {v1, v3, v4, v9, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 669
    .line 670
    .line 671
    :cond_12
    new-array v1, v7, [Ljava/lang/Object;

    .line 672
    .line 673
    const v2, 0x84d5

    .line 674
    .line 675
    .line 676
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 677
    .line 678
    .line 679
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 680
    .line 681
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 682
    .line 683
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 684
    .line 685
    .line 686
    goto :goto_c

    .line 687
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 688
    .line 689
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    .line 690
    .line 691
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
