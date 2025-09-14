.class public final Lcom/android/server/wm/MultiInstanceController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final adjustStartIntents(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [Landroid/content/Intent;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    aput-object v5, v3, v4

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    aput-object v5, v3, v6

    .line 14
    .line 15
    const/4 v7, 0x2

    .line 16
    aput-object v5, v3, v7

    .line 17
    .line 18
    new-array v8, v2, [Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 19
    .line 20
    aput-object v5, v8, v4

    .line 21
    .line 22
    aput-object v5, v8, v6

    .line 23
    .line 24
    aput-object v5, v8, v7

    .line 25
    .line 26
    new-array v2, v2, [I

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    move v10, v4

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    const/4 v12, 0x4

    .line 42
    if-eqz v11, :cond_5

    .line 43
    .line 44
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    check-cast v11, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 49
    .line 50
    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    const/4 v14, 0x7

    .line 55
    if-ne v13, v14, :cond_0

    .line 56
    .line 57
    new-instance v13, Landroid/app/ActivityOptions;

    .line 58
    .line 59
    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v14

    .line 63
    invoke-direct {v13, v14}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    invoke-static {v13}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    if-nez v13, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    invoke-virtual {v15}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    check-cast v15, Lcom/android/server/am/PendingIntentRecord;

    .line 98
    .line 99
    iget-object v15, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 100
    .line 101
    iget v15, v15, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 102
    .line 103
    if-ne v13, v6, :cond_2

    .line 104
    .line 105
    aput-object v14, v3, v4

    .line 106
    .line 107
    aput v15, v2, v4

    .line 108
    .line 109
    aput-object v11, v8, v4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    if-ne v13, v7, :cond_3

    .line 113
    .line 114
    aput-object v14, v3, v6

    .line 115
    .line 116
    aput v15, v2, v6

    .line 117
    .line 118
    aput-object v11, v8, v6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 122
    .line 123
    if-eqz v16, :cond_4

    .line 124
    .line 125
    if-ne v13, v12, :cond_4

    .line 126
    .line 127
    aput-object v14, v3, v7

    .line 128
    .line 129
    aput v15, v2, v7

    .line 130
    .line 131
    aput-object v11, v8, v7

    .line 132
    .line 133
    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    new-array v9, v10, [Lcom/android/server/wm/Task;

    .line 137
    .line 138
    new-array v11, v10, [Lcom/android/server/wm/ActivityRecord;

    .line 139
    .line 140
    new-array v13, v10, [I

    .line 141
    .line 142
    aput v6, v13, v4

    .line 143
    .line 144
    aput v7, v13, v6

    .line 145
    .line 146
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 147
    .line 148
    if-eqz v14, :cond_6

    .line 149
    .line 150
    if-le v10, v7, :cond_6

    .line 151
    .line 152
    aput v12, v13, v7

    .line 153
    .line 154
    :cond_6
    iget-object v7, v0, Lcom/android/server/wm/MultiInstanceController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 155
    .line 156
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 157
    .line 158
    .line 159
    monitor-enter v7

    .line 160
    move v12, v4

    .line 161
    :goto_2
    if-ge v12, v10, :cond_9

    .line 162
    .line 163
    :try_start_0
    iget-object v14, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 164
    .line 165
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 166
    .line 167
    iget-object v14, v14, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 168
    .line 169
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    aget v15, v13, v12

    .line 174
    .line 175
    invoke-virtual {v14, v15}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    aput-object v14, v9, v12

    .line 180
    .line 181
    if-eqz v14, :cond_7

    .line 182
    .line 183
    invoke-virtual {v14, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-eqz v14, :cond_7

    .line 188
    .line 189
    aget-object v14, v9, v12

    .line 190
    .line 191
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    goto :goto_3

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    goto/16 :goto_d

    .line 198
    .line 199
    :cond_7
    move-object v14, v5

    .line 200
    :goto_3
    if-eqz v14, :cond_8

    .line 201
    .line 202
    invoke-virtual {v14, v6, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    if-eqz v15, :cond_8

    .line 207
    .line 208
    invoke-virtual {v14, v6, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    aput-object v14, v11, v12

    .line 213
    .line 214
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_9
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 219
    .line 220
    .line 221
    new-array v7, v10, [Ljava/lang/String;

    .line 222
    .line 223
    new-instance v9, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .line 227
    .line 228
    move v12, v4

    .line 229
    :goto_4
    if-ge v12, v10, :cond_c

    .line 230
    .line 231
    iget-object v13, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 232
    .line 233
    iget-object v14, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 234
    .line 235
    aget-object v15, v3, v12

    .line 236
    .line 237
    aget v17, v2, v12

    .line 238
    .line 239
    iget v13, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 240
    .line 241
    iget v4, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 242
    .line 243
    const/16 v16, 0x0

    .line 244
    .line 245
    const/16 v18, 0x0

    .line 246
    .line 247
    move/from16 v19, v13

    .line 248
    .line 249
    move/from16 v20, v4

    .line 250
    .line 251
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    if-eqz v4, :cond_b

    .line 256
    .line 257
    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 258
    .line 259
    if-eqz v13, :cond_b

    .line 260
    .line 261
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 262
    .line 263
    if-eqz v13, :cond_b

    .line 264
    .line 265
    const-string v14, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    .line 266
    .line 267
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    if-eqz v13, :cond_a

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_a
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 279
    .line 280
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 281
    .line 282
    aput-object v4, v7, v12

    .line 283
    .line 284
    aget-object v13, v11, v12

    .line 285
    .line 286
    if-eqz v13, :cond_b

    .line 287
    .line 288
    iget-object v13, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-eqz v4, :cond_b

    .line 295
    .line 296
    aget-object v4, v11, v12

    .line 297
    .line 298
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 299
    .line 300
    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 301
    .line 302
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    aput-object v5, v3, v12

    .line 310
    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    aget-object v13, v8, v12

    .line 316
    .line 317
    invoke-interface {v4, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    :cond_b
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 321
    .line 322
    const/4 v4, 0x0

    .line 323
    goto :goto_4

    .line 324
    :cond_c
    const/4 v1, 0x0

    .line 325
    :goto_6
    if-ge v1, v10, :cond_16

    .line 326
    .line 327
    aget-object v4, v3, v1

    .line 328
    .line 329
    if-eqz v4, :cond_15

    .line 330
    .line 331
    aget-object v4, v7, v1

    .line 332
    .line 333
    if-nez v4, :cond_d

    .line 334
    .line 335
    goto/16 :goto_c

    .line 336
    .line 337
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .line 341
    .line 342
    aget-object v8, v7, v1

    .line 343
    .line 344
    aget v11, v2, v1

    .line 345
    .line 346
    invoke-virtual {v0, v11, v8, v4}, Lcom/android/server/wm/MultiInstanceController;->findAliasManagedTaskInPackage(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 347
    .line 348
    .line 349
    new-instance v8, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;

    .line 350
    .line 351
    const/4 v11, 0x1

    .line 352
    invoke-direct {v8, v11}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    sub-int/2addr v8, v6

    .line 363
    :goto_7
    if-ltz v8, :cond_11

    .line 364
    .line 365
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    check-cast v11, Lcom/android/server/wm/Task;

    .line 370
    .line 371
    iget v12, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 372
    .line 373
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v12

    .line 377
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    if-eqz v12, :cond_e

    .line 382
    .line 383
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_e
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 388
    .line 389
    .line 390
    move-result v12

    .line 391
    if-eqz v12, :cond_10

    .line 392
    .line 393
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 394
    .line 395
    .line 396
    move-result v12

    .line 397
    if-nez v12, :cond_f

    .line 398
    .line 399
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 400
    .line 401
    .line 402
    move-result v12

    .line 403
    if-ne v12, v6, :cond_10

    .line 404
    .line 405
    :cond_f
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    goto :goto_9

    .line 409
    :cond_10
    :goto_8
    add-int/lit8 v8, v8, -0x1

    .line 410
    .line 411
    goto :goto_7

    .line 412
    :cond_11
    move-object v11, v5

    .line 413
    :goto_9
    if-nez v11, :cond_13

    .line 414
    .line 415
    const/4 v8, 0x0

    .line 416
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    if-ge v8, v12, :cond_13

    .line 421
    .line 422
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v12

    .line 426
    check-cast v12, Lcom/android/server/wm/Task;

    .line 427
    .line 428
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 429
    .line 430
    .line 431
    move-result v13

    .line 432
    const/4 v14, 0x5

    .line 433
    if-ne v13, v14, :cond_12

    .line 434
    .line 435
    move-object v11, v12

    .line 436
    goto :goto_b

    .line 437
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_13
    :goto_b
    if-nez v11, :cond_14

    .line 441
    .line 442
    goto :goto_c

    .line 443
    :cond_14
    aget-object v4, v3, v1

    .line 444
    .line 445
    iget v8, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 446
    .line 447
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    .line 448
    .line 449
    .line 450
    aget-object v4, v3, v1

    .line 451
    .line 452
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 453
    .line 454
    .line 455
    move-result-object v8

    .line 456
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 461
    .line 462
    .line 463
    iget v4, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 464
    .line 465
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    :cond_15
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 473
    .line 474
    goto/16 :goto_6

    .line 475
    .line 476
    :cond_16
    return-void

    .line 477
    :goto_d
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 479
    .line 480
    .line 481
    throw v0
.end method

.method public final adjustStartIntentsForSingleInstancePerTask(Landroid/window/WindowContainerTransaction;)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [Landroid/content/Intent;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    aput-object v4, v2, v3

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    aput-object v4, v2, v5

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    aput-object v4, v2, v6

    .line 15
    .line 16
    new-array v7, v1, [Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 17
    .line 18
    aput-object v4, v7, v3

    .line 19
    .line 20
    aput-object v4, v7, v5

    .line 21
    .line 22
    aput-object v4, v7, v6

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    const/4 v10, 0x4

    .line 37
    if-eqz v9, :cond_4

    .line 38
    .line 39
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    check-cast v9, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 44
    .line 45
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    const/4 v12, 0x7

    .line 50
    if-ne v11, v12, :cond_0

    .line 51
    .line 52
    new-instance v11, Landroid/app/ActivityOptions;

    .line 53
    .line 54
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    invoke-direct {v11, v12}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-static {v11}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    if-nez v11, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    invoke-virtual {v13}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    check-cast v13, Lcom/android/server/am/PendingIntentRecord;

    .line 93
    .line 94
    iget-object v13, v13, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 95
    .line 96
    iget v13, v13, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 97
    .line 98
    if-ne v11, v5, :cond_2

    .line 99
    .line 100
    aput-object v12, v2, v3

    .line 101
    .line 102
    aput-object v9, v7, v3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    if-ne v11, v6, :cond_3

    .line 106
    .line 107
    aput-object v12, v2, v5

    .line 108
    .line 109
    aput-object v9, v7, v5

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 113
    .line 114
    if-eqz v13, :cond_0

    .line 115
    .line 116
    if-ne v11, v10, :cond_0

    .line 117
    .line 118
    aput-object v12, v2, v6

    .line 119
    .line 120
    aput-object v9, v7, v6

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    new-array v8, v1, [Lcom/android/server/wm/Task;

    .line 124
    .line 125
    new-array v9, v1, [Lcom/android/server/wm/Task;

    .line 126
    .line 127
    new-array v11, v1, [I

    .line 128
    .line 129
    aput v5, v11, v3

    .line 130
    .line 131
    aput v6, v11, v5

    .line 132
    .line 133
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 134
    .line 135
    if-eqz v12, :cond_5

    .line 136
    .line 137
    aput v10, v11, v6

    .line 138
    .line 139
    :cond_5
    move v6, v3

    .line 140
    :goto_1
    iget-object v13, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 141
    .line 142
    if-ge v6, v1, :cond_8

    .line 143
    .line 144
    iget-object v12, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 145
    .line 146
    iget-object v12, v12, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 147
    .line 148
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    aget v13, v11, v6

    .line 153
    .line 154
    invoke-virtual {v12, v13}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    aput-object v12, v8, v6

    .line 159
    .line 160
    if-eqz v12, :cond_6

    .line 161
    .line 162
    invoke-virtual {v12, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_6

    .line 167
    .line 168
    aget-object v12, v8, v6

    .line 169
    .line 170
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    goto :goto_2

    .line 175
    :cond_6
    move-object v12, v4

    .line 176
    :goto_2
    if-eqz v12, :cond_7

    .line 177
    .line 178
    invoke-virtual {v12, v5, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    if-eqz v13, :cond_7

    .line 183
    .line 184
    aput-object v12, v9, v6

    .line 185
    .line 186
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_8
    new-array v6, v1, [Lcom/android/server/wm/ActivityRecord;

    .line 190
    .line 191
    new-instance v8, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    .line 196
    move v11, v3

    .line 197
    :goto_3
    iget-object v12, v0, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    .line 198
    .line 199
    if-ge v11, v1, :cond_11

    .line 200
    .line 201
    aget-object v14, v2, v11

    .line 202
    .line 203
    if-nez v14, :cond_a

    .line 204
    .line 205
    :cond_9
    move-object/from16 v37, v13

    .line 206
    .line 207
    goto/16 :goto_6

    .line 208
    .line 209
    :cond_a
    iget-object v15, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    if-nez v15, :cond_c

    .line 216
    .line 217
    :cond_b
    move-object/from16 v21, v4

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_c
    const-wide/32 v16, 0x10000

    .line 221
    .line 222
    .line 223
    invoke-static/range {v16 .. v17}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v15, v14, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v14

    .line 239
    if-eqz v14, :cond_b

    .line 240
    .line 241
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 246
    .line 247
    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 248
    .line 249
    iget v15, v14, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 250
    .line 251
    if-ne v15, v10, :cond_d

    .line 252
    .line 253
    move-object/from16 v21, v14

    .line 254
    .line 255
    :goto_4
    if-eqz v21, :cond_9

    .line 256
    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 258
    .line 259
    .line 260
    move-result-wide v35

    .line 261
    :try_start_0
    aget-object v19, v2, v11

    .line 262
    .line 263
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    aget-object v14, v2, v11

    .line 268
    .line 269
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 270
    .line 271
    .line 272
    move-result-object v14

    .line 273
    if-eqz v14, :cond_e

    .line 274
    .line 275
    move/from16 v26, v5

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_e
    const/16 v26, 0x0

    .line 279
    .line 280
    :goto_5
    if-nez v3, :cond_f

    .line 281
    .line 282
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    :cond_f
    move-object/from16 v22, v3

    .line 287
    .line 288
    new-instance v3, Lcom/android/server/wm/ActivityRecord;

    .line 289
    .line 290
    iget-object v15, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 291
    .line 292
    const/16 v29, 0x0

    .line 293
    .line 294
    const/16 v30, 0x0

    .line 295
    .line 296
    const-wide/16 v33, 0x0

    .line 297
    .line 298
    const/16 v32, 0x0

    .line 299
    .line 300
    const/16 v31, 0x0

    .line 301
    .line 302
    const/4 v14, 0x0

    .line 303
    const/16 v16, 0x0

    .line 304
    .line 305
    move-object/from16 v28, v15

    .line 306
    .line 307
    move/from16 v15, v16

    .line 308
    .line 309
    const/16 v16, -0x1

    .line 310
    .line 311
    const/16 v17, 0x0

    .line 312
    .line 313
    const/16 v18, 0x0

    .line 314
    .line 315
    const/16 v20, 0x0

    .line 316
    .line 317
    const/16 v23, 0x0

    .line 318
    .line 319
    const/16 v24, 0x0

    .line 320
    .line 321
    const/16 v25, 0x0

    .line 322
    .line 323
    const/16 v27, 0x0

    .line 324
    .line 325
    move-object v10, v12

    .line 326
    move-object v12, v3

    .line 327
    move-object/from16 v37, v13

    .line 328
    .line 329
    invoke-direct/range {v12 .. v34}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .line 331
    .line 332
    invoke-static/range {v35 .. v36}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    .line 334
    .line 335
    aput-object v3, v6, v11

    .line 336
    .line 337
    aget-object v12, v9, v11

    .line 338
    .line 339
    if-eqz v12, :cond_10

    .line 340
    .line 341
    new-instance v13, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v10, v3, v12, v13}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-lez v3, :cond_10

    .line 354
    .line 355
    aget-object v3, v9, v11

    .line 356
    .line 357
    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 358
    .line 359
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    aput-object v4, v2, v11

    .line 367
    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    aget-object v10, v7, v11

    .line 373
    .line 374
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    goto :goto_6

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    invoke-static/range {v35 .. v36}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    .line 381
    .line 382
    throw v0

    .line 383
    :cond_10
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 384
    .line 385
    move-object/from16 v13, v37

    .line 386
    .line 387
    const/4 v3, 0x0

    .line 388
    const/4 v10, 0x4

    .line 389
    goto/16 :goto_3

    .line 390
    .line 391
    :cond_11
    move-object v10, v12

    .line 392
    move-object/from16 v37, v13

    .line 393
    .line 394
    new-instance v0, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .line 398
    .line 399
    const/4 v3, 0x0

    .line 400
    :goto_7
    if-ge v3, v1, :cond_1e

    .line 401
    .line 402
    aget-object v7, v2, v3

    .line 403
    .line 404
    if-eqz v7, :cond_12

    .line 405
    .line 406
    aget-object v7, v6, v3

    .line 407
    .line 408
    if-nez v7, :cond_13

    .line 409
    .line 410
    :cond_12
    move-object/from16 v12, v37

    .line 411
    .line 412
    goto/16 :goto_e

    .line 413
    .line 414
    :cond_13
    new-instance v7, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .line 418
    .line 419
    aget-object v9, v2, v3

    .line 420
    .line 421
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    aget-object v11, v6, v3

    .line 430
    .line 431
    move-object/from16 v12, v37

    .line 432
    .line 433
    iget-object v13, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 434
    .line 435
    invoke-virtual {v10, v11, v13, v7}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    .line 436
    .line 437
    .line 438
    new-instance v11, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;

    .line 439
    .line 440
    const/4 v13, 0x0

    .line 441
    invoke-direct {v11, v13}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 448
    .line 449
    .line 450
    move-result v11

    .line 451
    if-nez v11, :cond_14

    .line 452
    .line 453
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v11

    .line 457
    if-nez v11, :cond_14

    .line 458
    .line 459
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    goto/16 :goto_e

    .line 463
    .line 464
    :cond_14
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 465
    .line 466
    .line 467
    move-result v9

    .line 468
    sub-int/2addr v9, v5

    .line 469
    :goto_8
    if-ltz v9, :cond_17

    .line 470
    .line 471
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v11

    .line 475
    check-cast v11, Lcom/android/server/wm/Task;

    .line 476
    .line 477
    iget v13, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 478
    .line 479
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object v13

    .line 483
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v13

    .line 487
    if-eqz v13, :cond_15

    .line 488
    .line 489
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_15
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 494
    .line 495
    .line 496
    move-result v13

    .line 497
    if-eqz v13, :cond_16

    .line 498
    .line 499
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 500
    .line 501
    .line 502
    move-result-object v13

    .line 503
    invoke-static {v13}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 504
    .line 505
    .line 506
    move-result v13

    .line 507
    if-nez v13, :cond_18

    .line 508
    .line 509
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 510
    .line 511
    .line 512
    move-result v13

    .line 513
    if-ne v13, v5, :cond_16

    .line 514
    .line 515
    goto :goto_a

    .line 516
    :cond_16
    :goto_9
    add-int/lit8 v9, v9, -0x1

    .line 517
    .line 518
    goto :goto_8

    .line 519
    :cond_17
    move-object v11, v4

    .line 520
    :cond_18
    :goto_a
    if-nez v11, :cond_1a

    .line 521
    .line 522
    const/4 v9, 0x0

    .line 523
    :goto_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 524
    .line 525
    .line 526
    move-result v13

    .line 527
    if-ge v9, v13, :cond_1a

    .line 528
    .line 529
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v13

    .line 533
    check-cast v13, Lcom/android/server/wm/Task;

    .line 534
    .line 535
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 536
    .line 537
    .line 538
    move-result v14

    .line 539
    const/4 v15, 0x5

    .line 540
    if-ne v14, v15, :cond_19

    .line 541
    .line 542
    move-object v11, v13

    .line 543
    goto :goto_c

    .line 544
    :cond_19
    add-int/lit8 v9, v9, 0x1

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_1a
    :goto_c
    if-nez v11, :cond_1c

    .line 548
    .line 549
    const/4 v9, 0x0

    .line 550
    :goto_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 551
    .line 552
    .line 553
    move-result v13

    .line 554
    if-ge v9, v13, :cond_1c

    .line 555
    .line 556
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v13

    .line 560
    check-cast v13, Lcom/android/server/wm/Task;

    .line 561
    .line 562
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 563
    .line 564
    .line 565
    move-result v14

    .line 566
    if-eqz v14, :cond_1b

    .line 567
    .line 568
    add-int/lit8 v9, v9, 0x1

    .line 569
    .line 570
    goto :goto_d

    .line 571
    :cond_1b
    move-object v11, v13

    .line 572
    :cond_1c
    if-nez v11, :cond_1d

    .line 573
    .line 574
    aget-object v7, v2, v3

    .line 575
    .line 576
    const/high16 v9, 0x8000000

    .line 577
    .line 578
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 579
    .line 580
    .line 581
    goto :goto_e

    .line 582
    :cond_1d
    aget-object v7, v2, v3

    .line 583
    .line 584
    iget v9, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 585
    .line 586
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    .line 587
    .line 588
    .line 589
    iget v7, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 590
    .line 591
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 599
    .line 600
    move-object/from16 v37, v12

    .line 601
    .line 602
    goto/16 :goto_7

    .line 603
    .line 604
    :cond_1e
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    const-string p0, "[MultiInstanceController]"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final findAliasManagedTaskInPackage(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final initialize()V
    .locals 0

    .line 1
    return-void
.end method
