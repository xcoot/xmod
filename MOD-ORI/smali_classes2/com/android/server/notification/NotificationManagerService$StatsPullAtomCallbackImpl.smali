.class public final Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 22

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0x2764

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v2, "Unknown tagId="

    .line 15
    .line 16
    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v1

    .line 24
    :cond_0
    :pswitch_0
    move-object/from16 v3, p0

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    if-eq v0, v2, :cond_11

    .line 31
    .line 32
    const/16 v2, 0x3e8

    .line 33
    .line 34
    packed-switch v0, :pswitch_data_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    goto/16 :goto_16

    .line 41
    .line 42
    :pswitch_1
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 43
    .line 44
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v6

    .line 47
    move v3, v5

    .line 48
    move v4, v3

    .line 49
    :goto_0
    :try_start_0
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-ge v3, v7, :cond_4

    .line 56
    .line 57
    if-le v4, v2, :cond_1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_1
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 67
    .line 68
    iget-object v8, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-eqz v9, :cond_3

    .line 83
    .line 84
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    if-le v4, v2, :cond_2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget v11, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 96
    .line 97
    invoke-virtual {v9}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-virtual {v9}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    invoke-virtual {v9}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    invoke-virtual {v9}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    invoke-virtual {v9}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    const/16 v10, 0x2759

    .line 122
    .line 123
    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/util/StatsEvent;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto :goto_4

    .line 133
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    :goto_3
    monitor-exit v6

    .line 137
    goto/16 :goto_16

    .line 138
    .line 139
    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw v0

    .line 141
    :pswitch_2
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 142
    .line 143
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 144
    .line 145
    monitor-enter v6

    .line 146
    move v2, v5

    .line 147
    move v3, v2

    .line 148
    :goto_5
    :try_start_1
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-ge v2, v7, :cond_9

    .line 155
    .line 156
    const/16 v7, 0x7d0

    .line 157
    .line 158
    if-le v3, v7, :cond_5

    .line 159
    .line 160
    goto :goto_9

    .line 161
    :cond_5
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 162
    .line 163
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    check-cast v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 168
    .line 169
    iget-object v9, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 170
    .line 171
    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_8

    .line 184
    .line 185
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    check-cast v10, Landroid/app/NotificationChannel;

    .line 190
    .line 191
    add-int/lit8 v3, v3, 0x1

    .line 192
    .line 193
    if-le v3, v7, :cond_6

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_6
    iget v12, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 197
    .line 198
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getImportance()I

    .line 215
    .line 216
    .line 217
    move-result v16

    .line 218
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 219
    .line 220
    .line 221
    move-result v17

    .line 222
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 223
    .line 224
    .line 225
    move-result v18

    .line 226
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v11

    .line 230
    if-eqz v11, :cond_7

    .line 231
    .line 232
    move/from16 v19, v4

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_7
    move/from16 v19, v5

    .line 236
    .line 237
    :goto_7
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isDemoted()Z

    .line 238
    .line 239
    .line 240
    move-result v20

    .line 241
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 242
    .line 243
    .line 244
    move-result v21

    .line 245
    const/16 v11, 0x2758

    .line 246
    .line 247
    invoke-static/range {v11 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)Landroid/util/StatsEvent;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :catchall_1
    move-exception v0

    .line 256
    goto :goto_a

    .line 257
    :cond_8
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_9
    :goto_9
    monitor-exit v6

    .line 261
    goto/16 :goto_16

    .line 262
    .line 263
    :goto_a
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    throw v0

    .line 265
    :pswitch_3
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 266
    .line 267
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getAllUsersNotificationPermissions()Landroid/util/ArrayMap;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    if-eqz v3, :cond_a

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    goto :goto_b

    .line 281
    :cond_a
    const/4 v4, 0x0

    .line 282
    :goto_b
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 283
    .line 284
    monitor-enter v6

    .line 285
    move v7, v5

    .line 286
    move v8, v7

    .line 287
    :goto_c
    :try_start_2
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 288
    .line 289
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    const/4 v10, 0x3

    .line 294
    if-ge v7, v9, :cond_e

    .line 295
    .line 296
    if-le v8, v2, :cond_b

    .line 297
    .line 298
    goto/16 :goto_f

    .line 299
    .line 300
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 301
    .line 302
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 303
    .line 304
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    check-cast v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 309
    .line 310
    new-instance v11, Landroid/util/Pair;

    .line 311
    .line 312
    iget v12, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 313
    .line 314
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    iget-object v13, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 319
    .line 320
    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    if-eqz v3, :cond_d

    .line 324
    .line 325
    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v12

    .line 329
    if-eqz v12, :cond_d

    .line 330
    .line 331
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v12

    .line 335
    check-cast v12, Landroid/util/Pair;

    .line 336
    .line 337
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v13, Ljava/lang/Boolean;

    .line 340
    .line 341
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 342
    .line 343
    .line 344
    move-result v13

    .line 345
    if-eqz v13, :cond_c

    .line 346
    .line 347
    goto :goto_d

    .line 348
    :cond_c
    move v10, v5

    .line 349
    :goto_d
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v12, Ljava/lang/Boolean;

    .line 352
    .line 353
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 354
    .line 355
    .line 356
    move-result v12

    .line 357
    invoke-interface {v4, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move v13, v10

    .line 361
    move/from16 v16, v12

    .line 362
    .line 363
    goto :goto_e

    .line 364
    :catchall_2
    move-exception v0

    .line 365
    goto/16 :goto_12

    .line 366
    .line 367
    :cond_d
    const/16 v10, -0x3e8

    .line 368
    .line 369
    move/from16 v16, v5

    .line 370
    .line 371
    move v13, v10

    .line 372
    :goto_e
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 373
    .line 374
    iget-object v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 375
    .line 376
    iget v12, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 377
    .line 378
    invoke-virtual {v10, v12, v11}, Lcom/android/server/notification/PermissionHelper;->hasRequestedPermission(ILjava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    iget-object v11, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 383
    .line 384
    iget v12, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 385
    .line 386
    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/notification/PreferencesHelper;->getFsiState(Ljava/lang/String;IZ)I

    .line 387
    .line 388
    .line 389
    move-result v10

    .line 390
    iget-object v11, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 391
    .line 392
    const-string v12, "android.permission.USE_FULL_SCREEN_INTENT"

    .line 393
    .line 394
    iget-object v14, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 395
    .line 396
    iget v15, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 397
    .line 398
    invoke-static {v15}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 399
    .line 400
    .line 401
    move-result-object v15

    .line 402
    invoke-virtual {v11, v12, v14, v15}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 403
    .line 404
    .line 405
    move-result v11

    .line 406
    iget-object v12, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 407
    .line 408
    iget v14, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 409
    .line 410
    invoke-virtual {v0, v12, v14, v10, v11}, Lcom/android/server/notification/PreferencesHelper;->isFsiPermissionUserSet(Ljava/lang/String;III)Z

    .line 411
    .line 412
    .line 413
    move-result v18

    .line 414
    iget v12, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 415
    .line 416
    iget v14, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 417
    .line 418
    iget v15, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 419
    .line 420
    const/16 v11, 0x2757

    .line 421
    .line 422
    move/from16 v17, v10

    .line 423
    .line 424
    invoke-static/range {v11 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIZIZ)Landroid/util/StatsEvent;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    add-int/lit8 v7, v7, 0x1

    .line 432
    .line 433
    goto/16 :goto_c

    .line 434
    .line 435
    :cond_e
    :goto_f
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 436
    if-eqz v3, :cond_15

    .line 437
    .line 438
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_15

    .line 447
    .line 448
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    check-cast v4, Landroid/util/Pair;

    .line 453
    .line 454
    if-le v8, v2, :cond_f

    .line 455
    .line 456
    goto/16 :goto_16

    .line 457
    .line 458
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 459
    .line 460
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v6, Ljava/lang/Integer;

    .line 463
    .line 464
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 465
    .line 466
    .line 467
    move-result v12

    .line 468
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v6

    .line 472
    check-cast v6, Landroid/util/Pair;

    .line 473
    .line 474
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v6, Ljava/lang/Boolean;

    .line 477
    .line 478
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    if-eqz v6, :cond_10

    .line 483
    .line 484
    move v13, v10

    .line 485
    goto :goto_11

    .line 486
    :cond_10
    move v13, v5

    .line 487
    :goto_11
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    check-cast v4, Landroid/util/Pair;

    .line 492
    .line 493
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v4, Ljava/lang/Boolean;

    .line 496
    .line 497
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 498
    .line 499
    .line 500
    move-result v16

    .line 501
    const/16 v17, 0x0

    .line 502
    .line 503
    const/16 v18, 0x0

    .line 504
    .line 505
    const/16 v11, 0x2757

    .line 506
    .line 507
    const/16 v14, -0x3e8

    .line 508
    .line 509
    const/4 v15, 0x0

    .line 510
    invoke-static/range {v11 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIZIZ)Landroid/util/StatsEvent;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    goto :goto_10

    .line 518
    :goto_12
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 519
    throw v0

    .line 520
    :cond_11
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 521
    .line 522
    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigsArrayLock:Ljava/lang/Object;

    .line 523
    .line 524
    monitor-enter v2

    .line 525
    :try_start_4
    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 526
    .line 527
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    move v6, v5

    .line 532
    :goto_13
    if-ge v6, v3, :cond_14

    .line 533
    .line 534
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 535
    .line 536
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 537
    .line 538
    .line 539
    move-result v7

    .line 540
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 541
    .line 542
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v8

    .line 546
    move-object v15, v8

    .line 547
    check-cast v15, Landroid/service/notification/ZenModeConfig;

    .line 548
    .line 549
    invoke-virtual {v15}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    .line 550
    .line 551
    .line 552
    move-result v10

    .line 553
    iget-boolean v11, v15, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    .line 554
    .line 555
    const-string v13, ""

    .line 556
    .line 557
    invoke-virtual {v15}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    invoke-virtual {v8}, Landroid/service/notification/ZenPolicy;->toProto()[B

    .line 562
    .line 563
    .line 564
    move-result-object v16

    .line 565
    const/16 v17, 0x0

    .line 566
    .line 567
    const/16 v18, 0x0

    .line 568
    .line 569
    const/16 v19, -0x1

    .line 570
    .line 571
    const/16 v8, 0x2764

    .line 572
    .line 573
    const/4 v12, -0x1

    .line 574
    const/16 v14, 0x3e8

    .line 575
    .line 576
    const/16 v20, 0x0

    .line 577
    .line 578
    move v9, v7

    .line 579
    move-object/from16 p0, v15

    .line 580
    .line 581
    move-object/from16 v15, v16

    .line 582
    .line 583
    move/from16 v16, v20

    .line 584
    .line 585
    invoke-static/range {v8 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    .line 593
    .line 594
    .line 595
    move-result v8

    .line 596
    if-eqz v8, :cond_12

    .line 597
    .line 598
    move-object/from16 v8, p0

    .line 599
    .line 600
    iget-object v9, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 601
    .line 602
    invoke-virtual {v0, v7, v9, v4, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    .line 603
    .line 604
    .line 605
    goto :goto_14

    .line 606
    :catchall_3
    move-exception v0

    .line 607
    goto :goto_17

    .line 608
    :cond_12
    move-object/from16 v8, p0

    .line 609
    .line 610
    :goto_14
    iget-object v8, v8, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 611
    .line 612
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 613
    .line 614
    .line 615
    move-result-object v8

    .line 616
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 621
    .line 622
    .line 623
    move-result v9

    .line 624
    if-eqz v9, :cond_13

    .line 625
    .line 626
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v9

    .line 630
    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 631
    .line 632
    invoke-virtual {v0, v7, v9, v5, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    .line 633
    .line 634
    .line 635
    goto :goto_15

    .line 636
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 637
    .line 638
    goto :goto_13

    .line 639
    :cond_14
    monitor-exit v2

    .line 640
    :cond_15
    :goto_16
    return v5

    .line 641
    :goto_17
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 642
    throw v0

    .line 643
    :pswitch_data_0
    .packed-switch 0x2757
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    :pswitch_data_1
    .packed-switch 0x2757
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
