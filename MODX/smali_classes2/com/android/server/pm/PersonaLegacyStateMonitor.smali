.class public final Lcom/android/server/pm/PersonaLegacyStateMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mObserverList:Landroid/os/RemoteCallbackList;

.field public final mStateMap:Ljava/util/HashMap;

.field public final mUserManager:Landroid/os/UserManager;

.field public final receiver:Lcom/android/server/pm/PersonaLegacyStateMonitor$1;


# direct methods
.method public static -$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    .line 22
    .line 23
    :cond_0
    move-object v10, v0

    .line 24
    if-ne v9, v10, :cond_1

    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_1
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v2, "notifyStateChange(id:"

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ", state:"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ") from old state:"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, " i:"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v11, "PersonaManagerService::LegacyStateMonitor"

    .line 74
    .line 75
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :goto_0
    if-lez v0, :cond_2

    .line 79
    .line 80
    add-int/lit8 v1, v0, -0x1

    .line 81
    .line 82
    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/content/pm/ISystemPersonaObserver;

    .line 89
    .line 90
    invoke-interface {v0, v8, v10, v9}, Landroid/content/pm/ISystemPersonaObserver;->onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_1
    move v0, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 103
    .line 104
    .line 105
    new-instance v0, Landroid/content/Intent;

    .line 106
    .line 107
    const-string v1, "com.sec.knox.container.action.observer"

    .line 108
    .line 109
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v2, "com.sec.knox.container.category.observer.containerid"

    .line 115
    .line 116
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    const-string v1, "com.sec.knox.container.category.observer.onstatechange"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "com.sec.knox.container.extra.observer.newstate"

    .line 139
    .line 140
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v2, "com.sec.knox.container.extra.observer.previousstate"

    .line 148
    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    iget-object v1, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 155
    .line 156
    const-string v3, "com.samsung.container.OBSERVER"

    .line 157
    .line 158
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string/jumbo v0, "propagateNewStateChange() sendBroadcast()"

    .line 162
    .line 163
    .line 164
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 168
    .line 169
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    sget-object v1, Lcom/android/server/pm/PersonaLegacyStateMonitor$2;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 178
    .line 179
    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    aget v2, v1, v2

    .line 184
    .line 185
    const/16 v3, 0x5f

    .line 186
    .line 187
    const/16 v4, 0x5b

    .line 188
    .line 189
    const/16 v5, 0x5d

    .line 190
    .line 191
    const/16 v6, 0x5e

    .line 192
    .line 193
    const/4 v13, -0x1

    .line 194
    packed-switch v2, :pswitch_data_0

    .line 195
    .line 196
    .line 197
    move v14, v13

    .line 198
    goto :goto_2

    .line 199
    :pswitch_0
    move v14, v6

    .line 200
    goto :goto_2

    .line 201
    :pswitch_1
    move v14, v5

    .line 202
    goto :goto_2

    .line 203
    :pswitch_2
    move v14, v4

    .line 204
    goto :goto_2

    .line 205
    :pswitch_3
    move v14, v3

    .line 206
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    aget v1, v1, v2

    .line 211
    .line 212
    packed-switch v1, :pswitch_data_1

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :pswitch_4
    move v13, v6

    .line 217
    goto :goto_3

    .line 218
    :pswitch_5
    move v13, v5

    .line 219
    goto :goto_3

    .line 220
    :pswitch_6
    move v13, v4

    .line 221
    goto :goto_3

    .line 222
    :pswitch_7
    move v13, v3

    .line 223
    :goto_3
    const-string v15, " Package is "

    .line 224
    .line 225
    const/16 v16, 0x0

    .line 226
    .line 227
    if-eq v14, v13, :cond_3

    .line 228
    .line 229
    iget-object v1, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 230
    .line 231
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const-string v5, "Sending admin lock intent to MDM for user "

    .line 240
    .line 241
    if-eqz v6, :cond_4

    .line 242
    .line 243
    array-length v4, v6

    .line 244
    move/from16 v3, v16

    .line 245
    .line 246
    :goto_4
    if-ge v3, v4, :cond_3

    .line 247
    .line 248
    aget-object v2, v6, v3

    .line 249
    .line 250
    move-object/from16 v1, p0

    .line 251
    .line 252
    move-object/from16 v17, v2

    .line 253
    .line 254
    move/from16 v2, p1

    .line 255
    .line 256
    move/from16 v18, v3

    .line 257
    .line 258
    move v3, v12

    .line 259
    move/from16 v19, v4

    .line 260
    .line 261
    move v4, v14

    .line 262
    move/from16 v20, v0

    .line 263
    .line 264
    move-object v0, v5

    .line 265
    move v5, v13

    .line 266
    move-object/from16 v21, v6

    .line 267
    .line 268
    move-object/from16 v6, v17

    .line 269
    .line 270
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendContainerStateChangeIntent(IIIILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    move-object/from16 v2, v17

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    add-int/lit8 v3, v18, 0x1

    .line 297
    .line 298
    move-object v5, v0

    .line 299
    move/from16 v4, v19

    .line 300
    .line 301
    move/from16 v0, v20

    .line 302
    .line 303
    move-object/from16 v6, v21

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_3
    move/from16 v20, v0

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_4
    move/from16 v20, v0

    .line 310
    .line 311
    move-object v0, v5

    .line 312
    const/4 v6, 0x0

    .line 313
    move-object/from16 v1, p0

    .line 314
    .line 315
    move/from16 v2, p1

    .line 316
    .line 317
    move v3, v12

    .line 318
    move v4, v14

    .line 319
    move v5, v13

    .line 320
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendContainerStateChangeIntent(IIIILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v8, v0, v11}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :goto_5
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 327
    .line 328
    if-ne v9, v0, :cond_6

    .line 329
    .line 330
    if-eq v10, v0, :cond_6

    .line 331
    .line 332
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 333
    .line 334
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    move/from16 v1, v20

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-eqz v0, :cond_5

    .line 345
    .line 346
    array-length v1, v0

    .line 347
    move/from16 v2, v16

    .line 348
    .line 349
    :goto_6
    if-ge v2, v1, :cond_6

    .line 350
    .line 351
    aget-object v3, v0, v2

    .line 352
    .line 353
    invoke-virtual {v7, v8, v12, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForAdminLock(IILjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v5, "Sending admin lock change intent to MDM for user "

    .line 359
    .line 360
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    add-int/lit8 v2, v2, 0x1

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_5
    const/4 v0, 0x0

    .line 383
    invoke-virtual {v7, v8, v12, v0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForAdminLock(IILjava/lang/String;)V

    .line 384
    .line 385
    .line 386
    :cond_6
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    .line 387
    .line 388
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    :goto_7
    return-void

    .line 396
    nop

    .line 397
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static -$$Nest$msendIntentForRemoveContainer(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_REMOVED"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "containerid"

    .line 28
    .line 29
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string p2, "intent"

    .line 33
    .line 34
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string p2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    new-instance v2, Landroid/os/UserHandle;

    .line 44
    .line 45
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v1, Landroid/content/Intent;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    new-instance p1, Landroid/os/UserHandle;

    .line 82
    .line 83
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;-><init>(Lcom/android/server/pm/PersonaLegacyStateMonitor;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->receiver:Lcom/android/server/pm/PersonaLegacyStateMonitor$1;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string/jumbo v0, "user"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/os/UserManager;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 35
    .line 36
    const-string v1, "keyguard"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/app/KeyguardManager;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 45
    .line 46
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 47
    .line 48
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    .line 52
    .line 53
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    .line 55
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 65
    .line 66
    const-string v1, "PersonaManagerService::LegacyStateMonitor"

    .line 67
    .line 68
    const-string v2, "initialized"

    .line 69
    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/os/UserManager;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 98
    .line 99
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 100
    .line 101
    if-nez v1, :cond_1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    and-int/lit8 v1, v1, 0x8

    .line 115
    .line 116
    if-lez v1, :cond_2

    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    .line 119
    .line 120
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 127
    .line 128
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    and-int/lit8 v1, v1, 0x10

    .line 137
    .line 138
    if-lez v1, :cond_3

    .line 139
    .line 140
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    .line 141
    .line 142
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 143
    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 149
    .line 150
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    and-int/lit8 v1, v1, 0x4

    .line 159
    .line 160
    if-lez v1, :cond_4

    .line 161
    .line 162
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    .line 163
    .line 164
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 165
    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    .line 171
    .line 172
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 177
    .line 178
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_5

    .line 185
    .line 186
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    .line 187
    .line 188
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 189
    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 195
    .line 196
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 201
    .line 202
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_0

    .line 209
    .line 210
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    .line 211
    .line 212
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 213
    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    .line 219
    .line 220
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_6
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->receiver:Lcom/android/server/pm/PersonaLegacyStateMonitor$1;

    .line 228
    .line 229
    invoke-static {p1, p0}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    .line 230
    .line 231
    .line 232
    return-void
.end method


# virtual methods
.method public final sendContainerStateChangeIntent(IIIILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_STATE_CHANGED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "containerid"

    .line 25
    .line 26
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string p1, "container_old_state"

    .line 30
    .line 31
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string p1, "container_new_state"

    .line 35
    .line 36
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string p1, "intent"

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    new-instance p3, Landroid/os/UserHandle;

    .line 47
    .line 48
    invoke-direct {p3, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 49
    .line 50
    .line 51
    const-string p4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 52
    .line 53
    invoke-virtual {p1, v0, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    if-eqz p5, :cond_1

    .line 57
    .line 58
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance p3, Landroid/content/Intent;

    .line 71
    .line 72
    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    new-instance p1, Landroid/os/UserHandle;

    .line 81
    .line 82
    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p3, p1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public final sendIntentForAdminLock(IILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_ADMIN_LOCK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "containerid"

    .line 25
    .line 26
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string p1, "intent"

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string p1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    new-instance v2, Landroid/os/UserHandle;

    .line 41
    .line 42
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    if-eqz p3, :cond_2

    .line 61
    .line 62
    iget-object p3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    new-instance v1, Landroid/content/Intent;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    new-instance p3, Landroid/os/UserHandle;

    .line 79
    .line 80
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-direct {p3, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1, p3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method
