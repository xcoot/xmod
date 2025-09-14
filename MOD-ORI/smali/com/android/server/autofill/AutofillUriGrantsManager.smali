.class public final Lcom/android/server/autofill/AutofillUriGrantsManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityTaskMgrInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mSourceUid:I

.field public final mSourceUserId:I

.field public final mUgm:Landroid/app/IUriGrantsManager;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUid:I

    .line 5
    .line 6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUserId:I

    .line 11
    .line 12
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/autofill/AutofillUriGrantsManager;->mActivityTaskMgrInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 21
    .line 22
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/server/autofill/AutofillUriGrantsManager;->mUgm:Landroid/app/IUriGrantsManager;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v10, p3

    .line 4
    .line 5
    move-object/from16 v11, p4

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v12

    .line 11
    iget-object v0, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mActivityTaskMgrInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "getUriPermissionOwnerForActivity"

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 29
    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    move-object v13, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v3, v0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    new-instance v3, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, v0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 55
    .line 56
    :cond_1
    iget-object v0, v0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    if-nez v13, :cond_2

    .line 64
    .line 65
    const-string v0, "AutofillUriGrantsManager"

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "Can\'t grant URI permissions, because the target activity token is invalid: clip="

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", targetActivity="

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-object/from16 v2, p1

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ", targetUserId="

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ", targetActivityToken="

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-interface/range {p2 .. p2}, Landroid/os/IBinder;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    const/4 v0, 0x0

    .line 120
    move v14, v0

    .line 121
    :goto_2
    invoke-virtual/range {p4 .. p4}, Landroid/content/ClipData;->getItemCount()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-ge v14, v0, :cond_6

    .line 126
    .line 127
    invoke-virtual {v11, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    if-eqz v15, :cond_3

    .line 136
    .line 137
    const-string/jumbo v0, "content"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    :cond_3
    move-object/from16 v23, v13

    .line 151
    .line 152
    move/from16 p2, v14

    .line 153
    .line 154
    goto/16 :goto_8

    .line 155
    .line 156
    :cond_4
    const-string v9, "Granting URI permissions failed: uri="

    .line 157
    .line 158
    iget v0, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUserId:I

    .line 159
    .line 160
    invoke-static {v15, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 165
    .line 166
    const-string v7, ", permissionOwner="

    .line 167
    .line 168
    const-string v6, ", targetUserId="

    .line 169
    .line 170
    const-string v5, ", targetPkg="

    .line 171
    .line 172
    const-string v4, ", sourceUserId="

    .line 173
    .line 174
    iget v3, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUid:I

    .line 175
    .line 176
    const-string v2, ", sourceUid="

    .line 177
    .line 178
    const-string v11, "AutofillUriGrantsManager"

    .line 179
    .line 180
    if-eqz v0, :cond_5

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    move-object/from16 p1, v9

    .line 185
    .line 186
    const-string v9, "Granting URI permissions: uri="

    .line 187
    .line 188
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-static {v8, v5, v12, v6, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_5
    move-object/from16 p1, v9

    .line 232
    .line 233
    :goto_3
    invoke-static {v15}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 238
    .line 239
    .line 240
    move-result-wide v16

    .line 241
    :try_start_1
    iget-object v9, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mUgm:Landroid/app/IUriGrantsManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    .line 243
    move-object/from16 p2, v4

    .line 244
    .line 245
    :try_start_2
    iget v4, v1, Lcom/android/server/autofill/AutofillUriGrantsManager;->mSourceUid:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    .line 247
    const/16 v18, 0x1

    .line 248
    .line 249
    move-object/from16 v19, v2

    .line 250
    .line 251
    move-object v2, v9

    .line 252
    move v9, v3

    .line 253
    move-object v3, v13

    .line 254
    move-object/from16 v20, p2

    .line 255
    .line 256
    move-object/from16 v21, v5

    .line 257
    .line 258
    move-object v5, v12

    .line 259
    move-object v1, v6

    .line 260
    move-object v6, v0

    .line 261
    move/from16 p2, v14

    .line 262
    .line 263
    move-object v14, v7

    .line 264
    move/from16 v7, v18

    .line 265
    .line 266
    move/from16 v18, v8

    .line 267
    .line 268
    move-object/from16 v22, v11

    .line 269
    .line 270
    move-object/from16 v23, v13

    .line 271
    .line 272
    move-object/from16 v11, p1

    .line 273
    .line 274
    move v13, v9

    .line 275
    move/from16 v9, p3

    .line 276
    .line 277
    :try_start_3
    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    .line 279
    .line 280
    :goto_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_8

    .line 284
    .line 285
    :catchall_0
    move-exception v0

    .line 286
    goto :goto_7

    .line 287
    :catch_0
    move-exception v0

    .line 288
    goto :goto_6

    .line 289
    :catch_1
    move-exception v0

    .line 290
    move-object/from16 v20, p2

    .line 291
    .line 292
    move-object/from16 v19, v2

    .line 293
    .line 294
    :goto_5
    move-object/from16 v21, v5

    .line 295
    .line 296
    move-object v1, v6

    .line 297
    move/from16 v18, v8

    .line 298
    .line 299
    move-object/from16 v22, v11

    .line 300
    .line 301
    move-object/from16 v23, v13

    .line 302
    .line 303
    move/from16 p2, v14

    .line 304
    .line 305
    move-object/from16 v11, p1

    .line 306
    .line 307
    move v13, v3

    .line 308
    move-object v14, v7

    .line 309
    goto :goto_6

    .line 310
    :catch_2
    move-exception v0

    .line 311
    move-object/from16 v19, v2

    .line 312
    .line 313
    move-object/from16 v20, v4

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :goto_6
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    move-object/from16 v3, v19

    .line 325
    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    move-object/from16 v3, v20

    .line 333
    .line 334
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    move/from16 v3, v18

    .line 338
    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    move-object/from16 v3, v21

    .line 343
    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->hashCode()I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    move-object/from16 v2, v22

    .line 375
    .line 376
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    .line 378
    .line 379
    goto :goto_4

    .line 380
    :goto_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :goto_8
    add-int/lit8 v14, p2, 0x1

    .line 385
    .line 386
    move-object/from16 v1, p0

    .line 387
    .line 388
    move-object/from16 v11, p4

    .line 389
    .line 390
    move-object/from16 v13, v23

    .line 391
    .line 392
    goto/16 :goto_2

    .line 393
    .line 394
    :cond_6
    return-void

    .line 395
    :catchall_1
    move-exception v0

    .line 396
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 397
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 398
    .line 399
    .line 400
    throw v0
.end method
