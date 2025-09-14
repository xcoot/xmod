.class public final Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

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
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    goto/16 :goto_14

    .line 11
    .line 12
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 13
    .line 14
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, [B

    .line 17
    .line 18
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    const-string v4, "handleApplyRestore u="

    .line 28
    .line 29
    const-string v5, " payload="

    .line 30
    .line 31
    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    new-instance v3, Ljava/lang/String;

    .line 38
    .line 39
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-direct {v3, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x0

    .line 46
    :goto_0
    const-string v5, "NotificationService"

    .line 47
    .line 48
    invoke-static {v4, v3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, v2, v1}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_14

    .line 59
    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_14

    .line 65
    .line 66
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 69
    .line 70
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 71
    .line 72
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 81
    .line 82
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v6, v0

    .line 85
    check-cast v6, [Ljava/lang/String;

    .line 86
    .line 87
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 88
    .line 89
    move-object v7, v0

    .line 90
    check-cast v7, [I

    .line 91
    .line 92
    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 93
    .line 94
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 98
    .line 99
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 103
    .line 104
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 105
    .line 106
    .line 107
    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 108
    .line 109
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    if-eqz v6, :cond_c

    .line 113
    .line 114
    array-length v0, v6

    .line 115
    if-nez v0, :cond_2

    .line 116
    .line 117
    goto/16 :goto_c

    .line 118
    .line 119
    :cond_2
    if-eqz v4, :cond_3

    .line 120
    .line 121
    array-length v0, v6

    .line 122
    array-length v3, v7

    .line 123
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const/4 v3, 0x0

    .line 128
    const/4 v11, 0x0

    .line 129
    :goto_1
    if-ge v3, v0, :cond_b

    .line 130
    .line 131
    aget-object v11, v6, v3

    .line 132
    .line 133
    aget v12, v7, v3

    .line 134
    .line 135
    iget-object v13, v8, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter v13

    .line 138
    :try_start_1
    iget-object v14, v8, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-static {v12, v11}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    iget-object v12, v8, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 148
    .line 149
    invoke-static {v5, v11}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    monitor-exit v13

    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    const/4 v11, 0x1

    .line 160
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw v0

    .line 164
    :cond_3
    array-length v11, v6

    .line 165
    const/4 v12, 0x0

    .line 166
    const/4 v13, 0x0

    .line 167
    :goto_2
    if-ge v13, v11, :cond_a

    .line 168
    .line 169
    aget-object v14, v6, v13

    .line 170
    .line 171
    :try_start_2
    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 172
    .line 173
    invoke-virtual {v0, v14, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    iget-object v15, v8, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 178
    .line 179
    monitor-enter v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 180
    :try_start_3
    iget-object v3, v8, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 181
    .line 182
    invoke-static {v5, v14}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 191
    .line 192
    if-eqz v3, :cond_6

    .line 193
    .line 194
    iput v0, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 195
    .line 196
    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 197
    .line 198
    invoke-static {v5, v14}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 206
    .line 207
    iget-object v9, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 208
    .line 209
    iget v10, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 210
    .line 211
    invoke-static {v10, v9}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    invoke-virtual {v0, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    iget-boolean v0, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    .line 219
    .line 220
    if-eqz v0, :cond_5

    .line 221
    .line 222
    new-instance v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    .line 223
    .line 224
    iget-object v9, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 225
    .line 226
    iget v10, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 227
    .line 228
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 229
    .line 230
    .line 231
    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 232
    move/from16 v16, v11

    .line 233
    .line 234
    :try_start_4
    iget v11, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 235
    .line 236
    if-eqz v11, :cond_4

    .line 237
    .line 238
    const/4 v11, 0x1

    .line 239
    goto :goto_3

    .line 240
    :cond_4
    const/4 v11, 0x0

    .line 241
    :goto_3
    invoke-static {v3}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    invoke-direct {v0, v9, v11, v3, v10}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;ZZI)V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :catchall_1
    move-exception v0

    .line 250
    :goto_4
    const/4 v11, 0x1

    .line 251
    goto :goto_9

    .line 252
    :catchall_2
    move-exception v0

    .line 253
    move/from16 v16, v11

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_5
    move/from16 v16, v11

    .line 257
    .line 258
    const/4 v0, 0x0

    .line 259
    :goto_5
    const/4 v12, 0x1

    .line 260
    goto :goto_6

    .line 261
    :cond_6
    move/from16 v16, v11

    .line 262
    .line 263
    const/4 v0, 0x0

    .line 264
    :goto_6
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 265
    if-eqz v0, :cond_8

    .line 266
    .line 267
    :try_start_5
    iget-object v3, v8, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    iget-object v9, v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    .line 273
    .line 274
    if-nez v9, :cond_7

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_7
    iget v10, v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    .line 278
    .line 279
    invoke-virtual {v3, v9, v10}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    if-nez v11, :cond_8

    .line 284
    .line 285
    iget-boolean v0, v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 286
    .line 287
    const/4 v11, 0x1

    .line 288
    :try_start_6
    invoke-virtual {v3, v9, v0, v11, v10}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;ZZI)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 289
    .line 290
    .line 291
    goto :goto_b

    .line 292
    :cond_8
    :goto_7
    const/4 v11, 0x1

    .line 293
    goto :goto_b

    .line 294
    :catch_1
    move-exception v0

    .line 295
    :goto_8
    const/4 v11, 0x1

    .line 296
    goto :goto_a

    .line 297
    :goto_9
    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 298
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 299
    :catch_2
    move-exception v0

    .line 300
    goto :goto_a

    .line 301
    :catchall_3
    move-exception v0

    .line 302
    goto :goto_9

    .line 303
    :catch_3
    move-exception v0

    .line 304
    move/from16 v16, v11

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :goto_a
    const-string v3, "NotificationPrefHelper"

    .line 308
    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v10, "could not restore "

    .line 312
    .line 313
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .line 325
    .line 326
    :goto_b
    :try_start_9
    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 327
    .line 328
    invoke-virtual {v0, v14, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    invoke-virtual {v8, v0, v14}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-eqz v0, :cond_9

    .line 337
    .line 338
    invoke-virtual {v8, v0}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    or-int/2addr v12, v3

    .line 343
    invoke-virtual {v8, v0}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    .line 344
    .line 345
    .line 346
    move-result v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    .line 347
    or-int/2addr v12, v0

    .line 348
    :catch_4
    :cond_9
    add-int/lit8 v13, v13, 0x1

    .line 349
    .line 350
    move/from16 v11, v16

    .line 351
    .line 352
    goto/16 :goto_2

    .line 353
    .line 354
    :cond_a
    move v11, v12

    .line 355
    :cond_b
    if-eqz v11, :cond_d

    .line 356
    .line 357
    invoke-virtual {v8}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 358
    .line 359
    .line 360
    goto :goto_d

    .line 361
    :cond_c
    :goto_c
    const/4 v11, 0x0

    .line 362
    :cond_d
    :goto_d
    or-int v0, v4, v11

    .line 363
    .line 364
    if-eqz v4, :cond_13

    .line 365
    .line 366
    array-length v3, v6

    .line 367
    array-length v4, v7

    .line 368
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    const/4 v4, 0x0

    .line 373
    :goto_e
    if-ge v4, v3, :cond_13

    .line 374
    .line 375
    aget-object v5, v6, v4

    .line 376
    .line 377
    aget v8, v7, v4

    .line 378
    .line 379
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 380
    .line 381
    .line 382
    move-result v8

    .line 383
    iget-object v9, v2, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 384
    .line 385
    iget-object v10, v9, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    .line 386
    .line 387
    monitor-enter v10

    .line 388
    :try_start_a
    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 389
    .line 390
    invoke-virtual {v9}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    :cond_e
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 395
    .line 396
    .line 397
    move-result v11

    .line 398
    if-eqz v11, :cond_f

    .line 399
    .line 400
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v11

    .line 404
    check-cast v11, Landroid/util/Pair;

    .line 405
    .line 406
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 407
    .line 408
    if-eqz v12, :cond_e

    .line 409
    .line 410
    check-cast v12, Landroid/service/notification/StatusBarNotification;

    .line 411
    .line 412
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    .line 413
    .line 414
    .line 415
    move-result v12

    .line 416
    if-ne v8, v12, :cond_e

    .line 417
    .line 418
    if-eqz v5, :cond_e

    .line 419
    .line 420
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v12, Landroid/service/notification/StatusBarNotification;

    .line 423
    .line 424
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v12

    .line 428
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v12

    .line 432
    if-eqz v12, :cond_e

    .line 433
    .line 434
    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v11, Landroid/service/notification/StatusBarNotification;

    .line 437
    .line 438
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 439
    .line 440
    .line 441
    move-result-object v11

    .line 442
    if-eqz v11, :cond_e

    .line 443
    .line 444
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 445
    .line 446
    .line 447
    goto :goto_f

    .line 448
    :catchall_4
    move-exception v0

    .line 449
    goto :goto_13

    .line 450
    :cond_f
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 451
    iget-object v9, v2, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 452
    .line 453
    iget-object v11, v9, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 454
    .line 455
    monitor-enter v11

    .line 456
    :try_start_b
    iget-object v10, v9, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 457
    .line 458
    const/4 v12, 0x0

    .line 459
    invoke-virtual {v10, v8, v12}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 460
    .line 461
    .line 462
    move-result v10

    .line 463
    if-nez v10, :cond_11

    .line 464
    .line 465
    iget-object v10, v9, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    .line 466
    .line 467
    invoke-virtual {v10, v8, v12}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 468
    .line 469
    .line 470
    move-result v10

    .line 471
    if-eqz v10, :cond_10

    .line 472
    .line 473
    iget-object v10, v9, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    .line 474
    .line 475
    new-instance v13, Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v10, v8, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    check-cast v10, Ljava/util/List;

    .line 485
    .line 486
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    iget-object v5, v9, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    .line 490
    .line 491
    invoke-virtual {v5, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    goto :goto_10

    .line 495
    :catchall_5
    move-exception v0

    .line 496
    goto :goto_12

    .line 497
    :cond_10
    :goto_10
    monitor-exit v11

    .line 498
    goto :goto_11

    .line 499
    :cond_11
    iget-object v9, v9, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 500
    .line 501
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    check-cast v8, Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 506
    .line 507
    if-nez v8, :cond_12

    .line 508
    .line 509
    monitor-exit v11

    .line 510
    goto :goto_11

    .line 511
    :cond_12
    new-instance v9, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;

    .line 512
    .line 513
    invoke-direct {v9, v8, v5}, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    iget-object v5, v8, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    .line 517
    .line 518
    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 519
    .line 520
    .line 521
    monitor-exit v11

    .line 522
    :goto_11
    add-int/lit8 v4, v4, 0x1

    .line 523
    .line 524
    goto/16 :goto_e

    .line 525
    .line 526
    :goto_12
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 527
    throw v0

    .line 528
    :goto_13
    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 529
    throw v0

    .line 530
    :cond_13
    if-eqz v0, :cond_14

    .line 531
    .line 532
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 533
    .line 534
    .line 535
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 536
    .line 537
    .line 538
    goto :goto_14

    .line 539
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 540
    .line 541
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v1, Lcom/android/server/notification/toast/ToastRecord;

    .line 544
    .line 545
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    .line 546
    .line 547
    .line 548
    goto :goto_14

    .line 549
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 550
    .line 551
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 552
    .line 553
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleListenerInterruptionFilterChanged(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 554
    .line 555
    .line 556
    goto :goto_14

    .line 557
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 558
    .line 559
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 560
    .line 561
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleListenerHintsChanged(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 562
    .line 563
    .line 564
    goto :goto_14

    .line 565
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 566
    .line 567
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleSendRankingUpdate(Lcom/android/server/notification/NotificationManagerService;)V

    .line 568
    .line 569
    .line 570
    goto :goto_14

    .line 571
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 572
    .line 573
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v1, Lcom/android/server/notification/toast/ToastRecord;

    .line 576
    .line 577
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleDurationReached(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    .line 578
    .line 579
    .line 580
    :goto_14
    return-void

    .line 581
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    int-to-long v0, p2

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/android/server/notification/Flags;->notificationReduceMessagequeueUsage()Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final scheduleSendRankingUpdate()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/notification/Flags;->notificationReduceMessagequeueUsage()Z

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
