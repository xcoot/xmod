.class public final Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

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
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget v2, v0, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const-string/jumbo v3, "state"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v4, "com.samsung.android.server.action_google_net_state"

    .line 10
    .line 11
    .line 12
    const-string v5, "RemoteException:"

    .line 13
    .line 14
    const-string v6, "IllegalStateException:"

    .line 15
    .line 16
    const-string v7, ","

    .line 17
    .line 18
    const/4 v8, 0x3

    .line 19
    const/4 v9, 0x2

    .line 20
    const-string v10, "GmsAlarmManager"

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    const/4 v12, 0x1

    .line 24
    move-object/from16 v13, p0

    .line 25
    .line 26
    iget-object v13, v13, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 27
    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_24

    .line 32
    .line 33
    :pswitch_0
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 34
    .line 35
    .line 36
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 37
    .line 38
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 39
    .line 40
    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v13}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    :try_start_0
    iget-boolean v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 56
    .line 57
    invoke-interface {v2, v1, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 58
    .line 59
    .line 60
    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 61
    .line 62
    invoke-interface {v2, v1, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 66
    .line 67
    invoke-interface {v1, v0, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 71
    .line 72
    invoke-interface {v1, v0, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    goto :goto_1

    .line 83
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_1
    invoke-static {v5, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_2
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    .line 111
    .line 112
    invoke-virtual {v0, v1, v11}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    .line 113
    .line 114
    .line 115
    :cond_2
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 116
    .line 117
    goto/16 :goto_24

    .line 118
    .line 119
    :pswitch_1
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 120
    .line 121
    const-wide/16 v1, 0x2710

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 126
    .line 127
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 131
    .line 132
    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    .line 134
    .line 135
    goto/16 :goto_24

    .line 136
    .line 137
    :cond_3
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 138
    .line 139
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 143
    .line 144
    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    .line 146
    .line 147
    goto/16 :goto_24

    .line 148
    .line 149
    :pswitch_2
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    const-string/jumbo v2, "user"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroid/os/UserManager;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    sub-int/2addr v2, v12

    .line 169
    :goto_3
    if-ltz v2, :cond_46

    .line 170
    .line 171
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 176
    .line 177
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 178
    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string/jumbo v6, "get userId: "

    .line 182
    .line 183
    .line 184
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 188
    .line 189
    invoke-static {v5, v3, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    if-le v4, v1, :cond_4

    .line 193
    .line 194
    if-eqz v4, :cond_4

    .line 195
    .line 196
    new-instance v3, Landroid/os/Message;

    .line 197
    .line 198
    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 199
    .line 200
    .line 201
    const/16 v5, 0x9

    .line 202
    .line 203
    iput v5, v3, Landroid/os/Message;->what:I

    .line 204
    .line 205
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 206
    .line 207
    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 208
    .line 209
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    .line 211
    .line 212
    :cond_4
    add-int/2addr v2, v1

    .line 213
    goto :goto_3

    .line 214
    :pswitch_3
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 215
    .line 216
    invoke-virtual {v13, v0}, Lcom/android/server/alarm/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_6

    .line 229
    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Ljava/lang/Integer;

    .line 235
    .line 236
    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-nez v3, :cond_5

    .line 243
    .line 244
    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_46

    .line 255
    .line 256
    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 257
    .line 258
    if-nez v1, :cond_7

    .line 259
    .line 260
    goto/16 :goto_24

    .line 261
    .line 262
    :cond_7
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 263
    .line 264
    if-nez v1, :cond_8

    .line 265
    .line 266
    invoke-virtual {v13}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    if-nez v1, :cond_8

    .line 271
    .line 272
    goto/16 :goto_24

    .line 273
    .line 274
    :cond_8
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_46

    .line 283
    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Ljava/lang/Integer;

    .line 289
    .line 290
    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    invoke-interface {v2, v3, v11}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 297
    .line 298
    .line 299
    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-interface {v2, v1, v11}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 306
    .line 307
    .line 308
    goto :goto_5

    .line 309
    :catch_2
    move-exception v0

    .line 310
    goto :goto_6

    .line 311
    :catch_3
    move-exception v0

    .line 312
    goto :goto_7

    .line 313
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    goto/16 :goto_24

    .line 329
    .line 330
    :goto_7
    invoke-static {v5, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_24

    .line 334
    .line 335
    :pswitch_4
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 336
    .line 337
    invoke-virtual {v13, v0}, Lcom/android/server/alarm/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_9

    .line 350
    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    check-cast v2, Ljava/lang/Integer;

    .line 356
    .line 357
    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eqz v3, :cond_46

    .line 364
    .line 365
    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    goto :goto_8

    .line 371
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-eqz v1, :cond_46

    .line 376
    .line 377
    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 378
    .line 379
    if-nez v1, :cond_a

    .line 380
    .line 381
    goto/16 :goto_24

    .line 382
    .line 383
    :cond_a
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 384
    .line 385
    if-nez v1, :cond_b

    .line 386
    .line 387
    invoke-virtual {v13}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    if-nez v1, :cond_b

    .line 392
    .line 393
    goto/16 :goto_24

    .line 394
    .line 395
    :cond_b
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-eqz v1, :cond_46

    .line 404
    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    check-cast v1, Ljava/lang/Integer;

    .line 410
    .line 411
    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-interface {v2, v3, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 418
    .line 419
    .line 420
    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    invoke-interface {v2, v1, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    .line 427
    .line 428
    .line 429
    goto :goto_9

    .line 430
    :catch_4
    move-exception v0

    .line 431
    goto :goto_a

    .line 432
    :catch_5
    move-exception v0

    .line 433
    goto :goto_b

    .line 434
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    goto/16 :goto_24

    .line 450
    .line 451
    :goto_b
    invoke-static {v5, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_24

    .line 455
    .line 456
    :pswitch_5
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    const-string v2, "Exception with contentResolver : "

    .line 460
    .line 461
    sget-boolean v3, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    .line 462
    .line 463
    if-eqz v3, :cond_c

    .line 464
    .line 465
    const-string/jumbo v0, "updateSCPMParametersFromDB"

    .line 466
    .line 467
    .line 468
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    :cond_c
    if-eqz v3, :cond_d

    .line 472
    .line 473
    const-string/jumbo v0, "isSCPMAvailable"

    .line 474
    .line 475
    .line 476
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    :cond_d
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 480
    .line 481
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    const-string/jumbo v4, "com.samsung.android.sm.policy"

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v4, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    if-eqz v0, :cond_46

    .line 493
    .line 494
    if-eqz v3, :cond_e

    .line 495
    .line 496
    const-string/jumbo v0, "isNeedUpdateSCPMPolicy"

    .line 497
    .line 498
    .line 499
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    :cond_e
    const/4 v4, 0x0

    .line 503
    :try_start_3
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 504
    .line 505
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 506
    .line 507
    .line 508
    move-result-object v14

    .line 509
    iget-object v15, v13, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 510
    .line 511
    const/16 v18, 0x0

    .line 512
    .line 513
    const/16 v19, 0x0

    .line 514
    .line 515
    const/16 v16, 0x0

    .line 516
    .line 517
    const/16 v17, 0x0

    .line 518
    .line 519
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 520
    .line 521
    .line 522
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 523
    goto :goto_c

    .line 524
    :catch_6
    const-string/jumbo v0, "policy list is null"

    .line 525
    .line 526
    .line 527
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    move-object v0, v4

    .line 531
    :goto_c
    if-eqz v0, :cond_11

    .line 532
    .line 533
    :cond_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    if-eqz v5, :cond_10

    .line 538
    .line 539
    const-string/jumbo v5, "policyName"

    .line 540
    .line 541
    .line 542
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    const-string/jumbo v6, "policyVersion"

    .line 551
    .line 552
    .line 553
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    const-string/jumbo v7, "gmsnet"

    .line 562
    .line 563
    .line 564
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v7

    .line 568
    if-eqz v7, :cond_f

    .line 569
    .line 570
    const-string/jumbo v7, "isNeedUpdateSCPMPolicy: policyName="

    .line 571
    .line 572
    .line 573
    const-string v8, " , policyVersion="

    .line 574
    .line 575
    invoke-static {v7, v5, v8, v6, v10}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    move v5, v12

    .line 579
    goto :goto_d

    .line 580
    :cond_10
    move v5, v11

    .line 581
    :goto_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 582
    .line 583
    .line 584
    goto :goto_e

    .line 585
    :cond_11
    move v5, v11

    .line 586
    :goto_e
    if-eqz v5, :cond_21

    .line 587
    .line 588
    const-string/jumbo v5, "item"

    .line 589
    .line 590
    .line 591
    const-string/jumbo v6, "category"

    .line 592
    .line 593
    .line 594
    const-string/jumbo v7, "data1"

    .line 595
    .line 596
    .line 597
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v16

    .line 601
    const-string/jumbo v0, "hasValidItemFromDB!!"

    .line 602
    .line 603
    .line 604
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .line 606
    .line 607
    :try_start_4
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 608
    .line 609
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 610
    .line 611
    .line 612
    move-result-object v14

    .line 613
    iget-object v15, v13, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    .line 614
    .line 615
    const/16 v19, 0x0

    .line 616
    .line 617
    const/16 v17, 0x0

    .line 618
    .line 619
    const/16 v18, 0x0

    .line 620
    .line 621
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 622
    .line 623
    .line 624
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 625
    goto :goto_f

    .line 626
    :catch_7
    move-exception v0

    .line 627
    new-instance v8, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v14

    .line 636
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    invoke-static {v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 647
    .line 648
    .line 649
    move-object v0, v4

    .line 650
    :goto_f
    const-string/jumbo v8, "whitelist"

    .line 651
    .line 652
    .line 653
    const-string/jumbo v14, "checkin_addr"

    .line 654
    .line 655
    .line 656
    if-eqz v0, :cond_15

    .line 657
    .line 658
    :cond_12
    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 659
    .line 660
    .line 661
    move-result v15

    .line 662
    if-eqz v15, :cond_14

    .line 663
    .line 664
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v15

    .line 668
    if-eqz v15, :cond_12

    .line 669
    .line 670
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v15

    .line 674
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v15

    .line 682
    if-eqz v15, :cond_13

    .line 683
    .line 684
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v1

    .line 688
    if-eqz v1, :cond_13

    .line 689
    .line 690
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    .line 691
    .line 692
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 693
    .line 694
    .line 695
    move v1, v12

    .line 696
    goto :goto_11

    .line 697
    :cond_13
    const/4 v1, -0x1

    .line 698
    goto :goto_10

    .line 699
    :cond_14
    move v1, v11

    .line 700
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 701
    .line 702
    .line 703
    goto :goto_12

    .line 704
    :cond_15
    const-string/jumbo v0, "hasValidItemFromDB error, no database!!"

    .line 705
    .line 706
    .line 707
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    .line 709
    .line 710
    move v1, v11

    .line 711
    :goto_12
    if-eqz v1, :cond_21

    .line 712
    .line 713
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v19

    .line 717
    const-string/jumbo v0, "getSCPMPolicyItemFromDB!!"

    .line 718
    .line 719
    .line 720
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    :try_start_5
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 724
    .line 725
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 726
    .line 727
    .line 728
    move-result-object v17

    .line 729
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    .line 730
    .line 731
    const/16 v22, 0x0

    .line 732
    .line 733
    const/16 v20, 0x0

    .line 734
    .line 735
    const/16 v21, 0x0

    .line 736
    .line 737
    move-object/from16 v18, v0

    .line 738
    .line 739
    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 740
    .line 741
    .line 742
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 743
    goto :goto_13

    .line 744
    :catch_8
    move-exception v0

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .line 763
    .line 764
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 765
    .line 766
    .line 767
    :goto_13
    if-eqz v4, :cond_20

    .line 768
    .line 769
    :cond_16
    :goto_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-eqz v0, :cond_1f

    .line 774
    .line 775
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    if-eqz v0, :cond_16

    .line 780
    .line 781
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v5

    .line 797
    const-string v6, " ,scpm url: data1 = "

    .line 798
    .line 799
    if-eqz v5, :cond_17

    .line 800
    .line 801
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v5

    .line 805
    if-eqz v5, :cond_17

    .line 806
    .line 807
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    .line 808
    .line 809
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    if-eqz v3, :cond_16

    .line 813
    .line 814
    const-string/jumbo v0, "getSCPMPolicyItemFromDB category = "

    .line 815
    .line 816
    .line 817
    invoke-static {v0, v1, v6, v2, v10}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    goto :goto_14

    .line 821
    :cond_17
    const-string/jumbo v5, "switch"

    .line 822
    .line 823
    .line 824
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    move-result v5

    .line 828
    if-eqz v5, :cond_16

    .line 829
    .line 830
    if-eqz v3, :cond_18

    .line 831
    .line 832
    const-string v5, " item = "

    .line 833
    .line 834
    const-string v7, " switch category = "

    .line 835
    .line 836
    invoke-static {v5, v0, v7, v1, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    invoke-static {v1, v2, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    const-string/jumbo v1, "true"

    .line 847
    .line 848
    .line 849
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 850
    .line 851
    .line 852
    move-result v5

    .line 853
    sparse-switch v5, :sswitch_data_0

    .line 854
    .line 855
    .line 856
    :goto_15
    const/4 v0, -0x1

    .line 857
    goto :goto_16

    .line 858
    :sswitch_0
    const-string v5, "alarm_restriction"

    .line 859
    .line 860
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-nez v0, :cond_19

    .line 865
    .line 866
    goto :goto_15

    .line 867
    :cond_19
    move v0, v9

    .line 868
    goto :goto_16

    .line 869
    :sswitch_1
    const-string/jumbo v5, "wakelock_restriction"

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 873
    .line 874
    .line 875
    move-result v0

    .line 876
    if-nez v0, :cond_1a

    .line 877
    .line 878
    goto :goto_15

    .line 879
    :cond_1a
    move v0, v12

    .line 880
    goto :goto_16

    .line 881
    :sswitch_2
    const-string/jumbo v5, "network_restriction"

    .line 882
    .line 883
    .line 884
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move-result v0

    .line 888
    if-nez v0, :cond_1b

    .line 889
    .line 890
    goto :goto_15

    .line 891
    :cond_1b
    move v0, v11

    .line 892
    :goto_16
    packed-switch v0, :pswitch_data_1

    .line 893
    .line 894
    .line 895
    goto :goto_14

    .line 896
    :pswitch_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result v0

    .line 900
    if-eqz v0, :cond_1c

    .line 901
    .line 902
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 903
    .line 904
    or-int/2addr v0, v12

    .line 905
    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 906
    .line 907
    goto/16 :goto_14

    .line 908
    .line 909
    :cond_1c
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 910
    .line 911
    and-int/lit8 v0, v0, -0x2

    .line 912
    .line 913
    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 914
    .line 915
    goto/16 :goto_14

    .line 916
    .line 917
    :pswitch_7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v0

    .line 921
    if-eqz v0, :cond_1d

    .line 922
    .line 923
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 924
    .line 925
    or-int/lit8 v0, v0, 0x4

    .line 926
    .line 927
    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 928
    .line 929
    goto/16 :goto_14

    .line 930
    .line 931
    :cond_1d
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 932
    .line 933
    and-int/lit8 v0, v0, -0x5

    .line 934
    .line 935
    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 936
    .line 937
    goto/16 :goto_14

    .line 938
    .line 939
    :pswitch_8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_1e

    .line 944
    .line 945
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 946
    .line 947
    or-int/2addr v0, v9

    .line 948
    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 949
    .line 950
    goto/16 :goto_14

    .line 951
    .line 952
    :cond_1e
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 953
    .line 954
    and-int/lit8 v0, v0, -0x3

    .line 955
    .line 956
    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 957
    .line 958
    goto/16 :goto_14

    .line 959
    .line 960
    :cond_1f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 961
    .line 962
    .line 963
    goto :goto_17

    .line 964
    :cond_20
    const-string/jumbo v0, "getSCPMPolicyItemFromDB error, no database!!"

    .line 965
    .line 966
    .line 967
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .line 969
    .line 970
    :goto_17
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 971
    .line 972
    const/16 v1, 0xc

    .line 973
    .line 974
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 975
    .line 976
    .line 977
    goto/16 :goto_24

    .line 978
    .line 979
    :cond_21
    const-string/jumbo v0, "scpm doesn\'t find the Policy name for gmsnet"

    .line 980
    .line 981
    .line 982
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .line 984
    .line 985
    goto/16 :goto_24

    .line 986
    .line 987
    :pswitch_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 988
    .line 989
    .line 990
    move-result-wide v0

    .line 991
    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 992
    .line 993
    invoke-virtual {v2, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    sget-object v2, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    .line 997
    .line 998
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 999
    .line 1000
    .line 1001
    const-string/jumbo v3, "{"

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    const-string v4, "\"GMST\":\""

    .line 1010
    .line 1011
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1015
    .line 1016
    iget-wide v4, v4, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    .line 1017
    .line 1018
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    const-string v4, "\","

    .line 1022
    .line 1023
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v3

    .line 1030
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    const-string v5, "\"GMSC\":\""

    .line 1036
    .line 1037
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    iget-object v5, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1041
    .line 1042
    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 1043
    .line 1044
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v3

    .line 1054
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1058
    .line 1059
    invoke-virtual {v3, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    const-string v5, "\"NGMST\":\""

    .line 1065
    .line 1066
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    iget-object v5, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1070
    .line 1071
    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    .line 1072
    .line 1073
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v3

    .line 1083
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    const-string v5, "\"NGMSC\":\""

    .line 1089
    .line 1090
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    iget-object v5, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1094
    .line 1095
    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 1096
    .line 1097
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1111
    .line 1112
    invoke-virtual {v3, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    const-string v1, "\"VPNT\":\""

    .line 1118
    .line 1119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1123
    .line 1124
    iget-wide v5, v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    .line 1125
    .line 1126
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    const-string v1, "\"VPNC\":\""

    .line 1142
    .line 1143
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1147
    .line 1148
    iget-wide v3, v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 1149
    .line 1150
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    .line 1153
    const-string v1, "\""

    .line 1154
    .line 1155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    .line 1164
    .line 1165
    const-string/jumbo v0, "}"

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mBigdataEnable:Z

    .line 1176
    .line 1177
    if-eqz v1, :cond_23

    .line 1178
    .line 1179
    new-instance v1, Landroid/content/ContentValues;

    .line 1180
    .line 1181
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1182
    .line 1183
    .line 1184
    const-string v2, "app_id"

    .line 1185
    .line 1186
    const-string/jumbo v3, "com.android.server.gmsalarmmanager"

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    .line 1191
    .line 1192
    const-string/jumbo v2, "feature"

    .line 1193
    .line 1194
    .line 1195
    const-string v3, "GNET"

    .line 1196
    .line 1197
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    if-eqz v0, :cond_22

    .line 1201
    .line 1202
    const-string/jumbo v2, "extra"

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    :cond_22
    new-instance v2, Landroid/content/Intent;

    .line 1209
    .line 1210
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1211
    .line 1212
    .line 1213
    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    .line 1218
    .line 1219
    const-string/jumbo v3, "data"

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1223
    .line 1224
    .line 1225
    const-string/jumbo v1, "com.samsung.android.providers.context"

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    .line 1230
    .line 1231
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 1232
    .line 1233
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1234
    .line 1235
    .line 1236
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    const-string v2, "app_id = com.android.server.gmsalarmmanager, feature = GNET, extra = "

    .line 1239
    .line 1240
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    .line 1252
    .line 1253
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 1254
    .line 1255
    .line 1256
    goto/16 :goto_24

    .line 1257
    .line 1258
    :pswitch_a
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 1259
    .line 1260
    if-eqz v0, :cond_24

    .line 1261
    .line 1262
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 1263
    .line 1264
    if-eqz v0, :cond_24

    .line 1265
    .line 1266
    const-string v0, "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING"

    .line 1267
    .line 1268
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .line 1270
    .line 1271
    new-array v0, v11, [Ljava/lang/Object;

    .line 1272
    .line 1273
    const v1, 0x9d0d

    .line 1274
    .line 1275
    .line 1276
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1277
    .line 1278
    .line 1279
    invoke-static {v13, v11}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 1280
    .line 1281
    .line 1282
    :cond_24
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 1283
    .line 1284
    goto/16 :goto_24

    .line 1285
    .line 1286
    :pswitch_b
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 1287
    .line 1288
    if-eqz v0, :cond_25

    .line 1289
    .line 1290
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 1291
    .line 1292
    if-nez v0, :cond_25

    .line 1293
    .line 1294
    const-string v0, "MSG_ENABLE_GMS_NETWORK_BY_CHARGING"

    .line 1295
    .line 1296
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    .line 1298
    .line 1299
    new-array v0, v11, [Ljava/lang/Object;

    .line 1300
    .line 1301
    const v1, 0x9d0c

    .line 1302
    .line 1303
    .line 1304
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1305
    .line 1306
    .line 1307
    invoke-static {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 1308
    .line 1309
    .line 1310
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 1311
    .line 1312
    .line 1313
    :cond_25
    iput-boolean v12, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 1314
    .line 1315
    goto/16 :goto_24

    .line 1316
    .line 1317
    :pswitch_c
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 1318
    .line 1319
    if-eqz v0, :cond_26

    .line 1320
    .line 1321
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 1322
    .line 1323
    invoke-static {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 1324
    .line 1325
    .line 1326
    :cond_26
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 1327
    .line 1328
    if-nez v0, :cond_27

    .line 1329
    .line 1330
    return-void

    .line 1331
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1332
    .line 1333
    const-string v1, "[GMS-CORE] MSG_ENABLE_GMS_NETWORK:"

    .line 1334
    .line 1335
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1336
    .line 1337
    .line 1338
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 1339
    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    .line 1347
    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 1355
    .line 1356
    invoke-static {v0, v1, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 1360
    .line 1361
    if-nez v0, :cond_28

    .line 1362
    .line 1363
    new-array v0, v11, [Ljava/lang/Object;

    .line 1364
    .line 1365
    const v1, 0x9d0a

    .line 1366
    .line 1367
    .line 1368
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1369
    .line 1370
    .line 1371
    invoke-static {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 1372
    .line 1373
    .line 1374
    :cond_28
    new-instance v0, Landroid/content/Intent;

    .line 1375
    .line 1376
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1380
    .line 1381
    .line 1382
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 1383
    .line 1384
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1385
    .line 1386
    .line 1387
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 1388
    .line 1389
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 1390
    .line 1391
    .line 1392
    invoke-static {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 1393
    .line 1394
    .line 1395
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 1396
    .line 1397
    and-int/lit8 v0, v0, 0x4

    .line 1398
    .line 1399
    if-nez v0, :cond_29

    .line 1400
    .line 1401
    goto/16 :goto_24

    .line 1402
    .line 1403
    :cond_29
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 1404
    .line 1405
    if-eqz v0, :cond_46

    .line 1406
    .line 1407
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    .line 1408
    .line 1409
    invoke-virtual {v0, v1, v11}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    .line 1410
    .line 1411
    .line 1412
    goto/16 :goto_24

    .line 1413
    .line 1414
    :pswitch_d
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 1415
    .line 1416
    if-eqz v0, :cond_2a

    .line 1417
    .line 1418
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 1419
    .line 1420
    invoke-static {v13, v9}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 1421
    .line 1422
    .line 1423
    :cond_2a
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 1424
    .line 1425
    if-eqz v0, :cond_2b

    .line 1426
    .line 1427
    return-void

    .line 1428
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    const-string v1, "[GMS-CORE] MSG_DISABLE_GMS_NETWORK:"

    .line 1431
    .line 1432
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1433
    .line 1434
    .line 1435
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 1436
    .line 1437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    .line 1443
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    .line 1444
    .line 1445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    .line 1451
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 1452
    .line 1453
    invoke-static {v0, v1, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1454
    .line 1455
    .line 1456
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 1457
    .line 1458
    if-nez v0, :cond_2c

    .line 1459
    .line 1460
    new-array v0, v11, [Ljava/lang/Object;

    .line 1461
    .line 1462
    const v1, 0x9d09

    .line 1463
    .line 1464
    .line 1465
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1466
    .line 1467
    .line 1468
    invoke-static {v13, v11}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    .line 1469
    .line 1470
    .line 1471
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    .line 1472
    .line 1473
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1477
    .line 1478
    .line 1479
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 1480
    .line 1481
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1482
    .line 1483
    .line 1484
    iput-boolean v12, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 1485
    .line 1486
    invoke-static {v13, v9}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 1487
    .line 1488
    .line 1489
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 1490
    .line 1491
    and-int/lit8 v0, v0, 0x4

    .line 1492
    .line 1493
    if-nez v0, :cond_2d

    .line 1494
    .line 1495
    goto/16 :goto_24

    .line 1496
    .line 1497
    :cond_2d
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 1498
    .line 1499
    if-eqz v0, :cond_46

    .line 1500
    .line 1501
    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    .line 1502
    .line 1503
    invoke-virtual {v0, v1, v12}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    .line 1504
    .line 1505
    .line 1506
    goto/16 :goto_24

    .line 1507
    .line 1508
    :pswitch_e
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 1509
    .line 1510
    if-nez v0, :cond_2e

    .line 1511
    .line 1512
    return-void

    .line 1513
    :cond_2e
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 1514
    .line 1515
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1516
    .line 1517
    .line 1518
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 1519
    .line 1520
    const-string/jumbo v1, "connectivity"

    .line 1521
    .line 1522
    .line 1523
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v0

    .line 1527
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1528
    .line 1529
    invoke-virtual {v0, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v0

    .line 1533
    if-eqz v0, :cond_2f

    .line 1534
    .line 1535
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 1536
    .line 1537
    .line 1538
    move-result v0

    .line 1539
    if-eqz v0, :cond_2f

    .line 1540
    .line 1541
    move v0, v12

    .line 1542
    goto :goto_18

    .line 1543
    :cond_2f
    move v0, v11

    .line 1544
    :goto_18
    if-eqz v0, :cond_30

    .line 1545
    .line 1546
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 1547
    .line 1548
    const-wide/32 v1, 0xdbba0

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1552
    .line 1553
    .line 1554
    goto :goto_19

    .line 1555
    :cond_30
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 1556
    .line 1557
    const-wide/32 v1, 0x1b7740

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1561
    .line 1562
    .line 1563
    :goto_19
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    .line 1564
    .line 1565
    if-nez v0, :cond_31

    .line 1566
    .line 1567
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 1568
    .line 1569
    if-nez v0, :cond_31

    .line 1570
    .line 1571
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 1572
    .line 1573
    if-nez v0, :cond_31

    .line 1574
    .line 1575
    goto/16 :goto_24

    .line 1576
    .line 1577
    :cond_31
    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 1578
    .line 1579
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 1580
    .line 1581
    const-string v2, "8985"

    .line 1582
    .line 1583
    const-string v3, "8986"

    .line 1584
    .line 1585
    const-string/jumbo v4, "phone"

    .line 1586
    .line 1587
    .line 1588
    if-eqz v0, :cond_35

    .line 1589
    .line 1590
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 1591
    .line 1592
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v0

    .line 1596
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1597
    .line 1598
    if-eqz v0, :cond_34

    .line 1599
    .line 1600
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v0

    .line 1604
    if-nez v0, :cond_33

    .line 1605
    .line 1606
    :cond_32
    :goto_1a
    move v0, v12

    .line 1607
    goto :goto_1b

    .line 1608
    :cond_33
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1609
    .line 1610
    .line 1611
    move-result v5

    .line 1612
    if-nez v5, :cond_32

    .line 1613
    .line 1614
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v0

    .line 1618
    if-eqz v0, :cond_34

    .line 1619
    .line 1620
    goto :goto_1a

    .line 1621
    :cond_34
    move v0, v11

    .line 1622
    :goto_1b
    if-nez v0, :cond_39

    .line 1623
    .line 1624
    :cond_35
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 1625
    .line 1626
    if-eqz v0, :cond_3d

    .line 1627
    .line 1628
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 1629
    .line 1630
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v0

    .line 1634
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1635
    .line 1636
    if-eqz v0, :cond_36

    .line 1637
    .line 1638
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v0

    .line 1642
    if-nez v0, :cond_37

    .line 1643
    .line 1644
    :cond_36
    move v0, v11

    .line 1645
    goto :goto_1c

    .line 1646
    :cond_37
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1647
    .line 1648
    .line 1649
    move-result v3

    .line 1650
    if-nez v3, :cond_38

    .line 1651
    .line 1652
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1653
    .line 1654
    .line 1655
    move-result v0

    .line 1656
    if-eqz v0, :cond_36

    .line 1657
    .line 1658
    :cond_38
    move v0, v12

    .line 1659
    :goto_1c
    if-eqz v0, :cond_3d

    .line 1660
    .line 1661
    :cond_39
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z

    .line 1662
    .line 1663
    .line 1664
    move-result v0

    .line 1665
    if-eqz v0, :cond_3c

    .line 1666
    .line 1667
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckGoogleNetwork(Lcom/android/server/alarm/GmsAlarmManager;)I

    .line 1668
    .line 1669
    .line 1670
    move-result v0

    .line 1671
    const-string v2, "[GMS-CORE] China or hongkong mode and google network return: "

    .line 1672
    .line 1673
    invoke-static {v0, v2, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1674
    .line 1675
    .line 1676
    const/16 v2, 0xc8

    .line 1677
    .line 1678
    if-eq v0, v2, :cond_3b

    .line 1679
    .line 1680
    const/16 v2, 0xcc

    .line 1681
    .line 1682
    if-eq v0, v2, :cond_3b

    .line 1683
    .line 1684
    const/16 v2, 0x12e

    .line 1685
    .line 1686
    if-ne v0, v2, :cond_3a

    .line 1687
    .line 1688
    goto :goto_1d

    .line 1689
    :cond_3a
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 1690
    .line 1691
    goto :goto_1e

    .line 1692
    :cond_3b
    :goto_1d
    iput-boolean v12, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 1693
    .line 1694
    goto :goto_1e

    .line 1695
    :cond_3c
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 1696
    .line 1697
    goto :goto_1e

    .line 1698
    :cond_3d
    iput-boolean v12, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 1699
    .line 1700
    :goto_1e
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z

    .line 1701
    .line 1702
    .line 1703
    move-result v0

    .line 1704
    if-eqz v0, :cond_42

    .line 1705
    .line 1706
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 1707
    .line 1708
    if-eqz v0, :cond_3e

    .line 1709
    .line 1710
    const-string v0, "[GMS-CORE] net work google can net"

    .line 1711
    .line 1712
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    .line 1714
    .line 1715
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 1716
    .line 1717
    invoke-virtual {v13, v0, v12}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(Ljava/util/ArrayList;Z)V

    .line 1718
    .line 1719
    .line 1720
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 1721
    .line 1722
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1723
    .line 1724
    .line 1725
    goto/16 :goto_22

    .line 1726
    .line 1727
    :cond_3e
    const-string v0, "[GMS-CORE] net work google no net"

    .line 1728
    .line 1729
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    .line 1731
    .line 1732
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    .line 1733
    .line 1734
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v2

    .line 1738
    :cond_3f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1739
    .line 1740
    .line 1741
    move-result v0

    .line 1742
    if-eqz v0, :cond_43

    .line 1743
    .line 1744
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    check-cast v0, Ljava/lang/String;

    .line 1749
    .line 1750
    const-string v3, "[GMS-CORE] parseHostAndSetUrlFirewallRule host = "

    .line 1751
    .line 1752
    new-instance v4, Ljava/util/ArrayList;

    .line 1753
    .line 1754
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    .line 1756
    .line 1757
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1758
    .line 1759
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1760
    .line 1761
    .line 1762
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    .line 1764
    .line 1765
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v3

    .line 1769
    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    .line 1771
    .line 1772
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v0

    .line 1776
    move v3, v11

    .line 1777
    :goto_20
    array-length v5, v0

    .line 1778
    if-ge v3, v5, :cond_40

    .line 1779
    .line 1780
    aget-object v5, v0, v3

    .line 1781
    .line 1782
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v5

    .line 1786
    aget-object v6, v0, v3

    .line 1787
    .line 1788
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v6

    .line 1792
    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    .line 1794
    .line 1795
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    .line 1797
    .line 1798
    add-int/2addr v3, v12

    .line 1799
    goto :goto_20

    .line 1800
    :catch_9
    move-exception v0

    .line 1801
    goto :goto_21

    .line 1802
    :cond_40
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 1803
    .line 1804
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1805
    .line 1806
    .line 1807
    move-result v0

    .line 1808
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1809
    .line 1810
    .line 1811
    move-result v3

    .line 1812
    if-ne v0, v3, :cond_41

    .line 1813
    .line 1814
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 1815
    .line 1816
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    .line 1817
    .line 1818
    .line 1819
    move-result v0

    .line 1820
    if-nez v0, :cond_3f

    .line 1821
    .line 1822
    :cond_41
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 1823
    .line 1824
    invoke-virtual {v13, v0, v12}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(Ljava/util/ArrayList;Z)V

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v13, v4, v11}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(Ljava/util/ArrayList;Z)V

    .line 1828
    .line 1829
    .line 1830
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 1831
    .line 1832
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1833
    .line 1834
    .line 1835
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 1836
    .line 1837
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_9

    .line 1838
    .line 1839
    .line 1840
    goto :goto_1f

    .line 1841
    :goto_21
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 1842
    .line 1843
    .line 1844
    goto :goto_1f

    .line 1845
    :cond_42
    const-string v0, "[GMS-CORE] no net work"

    .line 1846
    .line 1847
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    .line 1849
    .line 1850
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 1851
    .line 1852
    invoke-virtual {v13, v0, v12}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(Ljava/util/ArrayList;Z)V

    .line 1853
    .line 1854
    .line 1855
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 1856
    .line 1857
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1858
    .line 1859
    .line 1860
    :cond_43
    :goto_22
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 1861
    .line 1862
    if-eqz v1, :cond_44

    .line 1863
    .line 1864
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1865
    .line 1866
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1867
    .line 1868
    .line 1869
    move-result-wide v1

    .line 1870
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    .line 1871
    .line 1872
    .line 1873
    goto :goto_23

    .line 1874
    :cond_44
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1875
    .line 1876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1877
    .line 1878
    .line 1879
    move-result-wide v1

    .line 1880
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    .line 1881
    .line 1882
    .line 1883
    :goto_23
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 1884
    .line 1885
    if-nez v0, :cond_45

    .line 1886
    .line 1887
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 1888
    .line 1889
    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1890
    .line 1891
    .line 1892
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 1893
    .line 1894
    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1895
    .line 1896
    .line 1897
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1898
    .line 1899
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1900
    .line 1901
    .line 1902
    move-result-wide v1

    .line 1903
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    .line 1904
    .line 1905
    .line 1906
    goto :goto_24

    .line 1907
    :cond_45
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 1908
    .line 1909
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1910
    .line 1911
    .line 1912
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 1913
    .line 1914
    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1915
    .line 1916
    .line 1917
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 1918
    .line 1919
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1920
    .line 1921
    .line 1922
    move-result-wide v1

    .line 1923
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    .line 1924
    .line 1925
    .line 1926
    :cond_46
    :goto_24
    return-void

    .line 1927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    :sswitch_data_0
    .sparse-switch
        0xe15f73b -> :sswitch_2
        0x3cdd985c -> :sswitch_1
        0x6677fade -> :sswitch_0
    .end sparse-switch

    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
