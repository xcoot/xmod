.class public final Lcom/android/server/wm/SnapshotController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/wm/SnapshotPersistQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController;

    .line 12
    .line 13
    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController;

    .line 19
    .line 20
    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onTransactionReady(Ljava/util/ArrayList;I)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p2, v1, :cond_1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne p2, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move v2, v1

    .line 12
    :goto_1
    const/4 v3, 0x2

    .line 13
    if-eq p2, v3, :cond_3

    .line 14
    .line 15
    const/4 v4, 0x4

    .line 16
    if-ne p2, v4, :cond_2

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_2
    move v4, v0

    .line 20
    goto :goto_3

    .line 21
    :cond_3
    :goto_2
    move v4, v1

    .line 22
    :goto_3
    const/4 v5, 0x0

    .line 23
    iget-object v6, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 24
    .line 25
    if-nez v2, :cond_8

    .line 26
    .line 27
    if-nez v4, :cond_8

    .line 28
    .line 29
    const/16 v2, 0x3e8

    .line 30
    .line 31
    if-ge p2, v2, :cond_8

    .line 32
    .line 33
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 34
    .line 35
    if-eqz p0, :cond_7

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    move-object p1, v5

    .line 42
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_6

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 53
    .line 54
    iget-object v2, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget v3, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 61
    .line 62
    const/4 v4, 0x5

    .line 63
    if-ne v3, v4, :cond_5

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_5

    .line 72
    .line 73
    move v0, v1

    .line 74
    :cond_5
    if-eqz v2, :cond_4

    .line 75
    .line 76
    iget-boolean v3, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-ne v3, v1, :cond_4

    .line 91
    .line 92
    new-instance p1, Landroid/util/Pair;

    .line 93
    .line 94
    invoke-direct {p1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_6
    if-eqz v0, :cond_7

    .line 99
    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p0, Lcom/android/server/wm/Task;

    .line 105
    .line 106
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 109
    .line 110
    iput-object p1, v6, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 111
    .line 112
    :try_start_0
    invoke-virtual {v6, p0}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    iput-object v5, v6, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    iput-object v5, v6, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 120
    .line 121
    throw p0

    .line 122
    :cond_7
    :goto_5
    return-void

    .line 123
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    sub-int/2addr p2, v1

    .line 128
    move-object v2, v5

    .line 129
    :goto_6
    if-ltz p2, :cond_15

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 136
    .line 137
    iget v8, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 138
    .line 139
    if-ne v8, v3, :cond_9

    .line 140
    .line 141
    goto/16 :goto_9

    .line 142
    .line 143
    :cond_9
    iget-object v8, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 144
    .line 145
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_a

    .line 150
    .line 151
    goto/16 :goto_9

    .line 152
    .line 153
    :cond_a
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    if-eqz v9, :cond_d

    .line 158
    .line 159
    iget-boolean v10, v9, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 160
    .line 161
    if-nez v10, :cond_d

    .line 162
    .line 163
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-nez v10, :cond_d

    .line 168
    .line 169
    iget v10, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 170
    .line 171
    if-ne v10, v3, :cond_b

    .line 172
    .line 173
    iget v10, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 174
    .line 175
    const/4 v11, 0x6

    .line 176
    if-ne v10, v11, :cond_b

    .line 177
    .line 178
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-ne v10, v1, :cond_b

    .line 183
    .line 184
    goto/16 :goto_9

    .line 185
    .line 186
    :cond_b
    invoke-virtual {v6, v9}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    if-eqz v10, :cond_c

    .line 191
    .line 192
    invoke-virtual {v6, v9}, Lcom/android/server/wm/TaskSnapshotController;->removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V

    .line 193
    .line 194
    .line 195
    goto :goto_9

    .line 196
    :cond_c
    iput-object v7, v6, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 197
    .line 198
    :try_start_1
    invoke-virtual {v6, v9}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    .line 200
    .line 201
    iput-object v5, v6, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :catchall_1
    move-exception p0

    .line 205
    iput-object v5, v6, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 206
    .line 207
    throw p0

    .line 208
    :cond_d
    :goto_7
    if-eqz v4, :cond_e

    .line 209
    .line 210
    goto :goto_9

    .line 211
    :cond_e
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    if-nez v7, :cond_f

    .line 216
    .line 217
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    if-eqz v7, :cond_14

    .line 222
    .line 223
    :cond_f
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    if-eqz v7, :cond_10

    .line 228
    .line 229
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    goto :goto_8

    .line 234
    :cond_10
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    :goto_8
    if-eqz v7, :cond_14

    .line 239
    .line 240
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 241
    .line 242
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_14

    .line 247
    .line 248
    if-nez v2, :cond_11

    .line 249
    .line 250
    new-instance v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;

    .line 251
    .line 252
    invoke-direct {v2}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;-><init>()V

    .line 253
    .line 254
    .line 255
    :cond_11
    iget-object v8, v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    .line 256
    .line 257
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 258
    .line 259
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    check-cast v8, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    .line 264
    .line 265
    if-nez v8, :cond_12

    .line 266
    .line 267
    new-instance v8, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    .line 268
    .line 269
    invoke-direct {v8}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;-><init>()V

    .line 270
    .line 271
    .line 272
    iget-object v9, v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    .line 273
    .line 274
    iget-object v10, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 275
    .line 276
    invoke-virtual {v9, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    :cond_12
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    if-eqz v9, :cond_13

    .line 284
    .line 285
    iget-object v8, v8, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_13
    iget-object v8, v8, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    :cond_14
    :goto_9
    add-int/lit8 p2, p2, -0x1

    .line 297
    .line 298
    goto/16 :goto_6

    .line 299
    .line 300
    :cond_15
    if-eqz v2, :cond_21

    .line 301
    .line 302
    iget-object p1, v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    sub-int/2addr p1, v1

    .line 309
    :goto_a
    if-ltz p1, :cond_21

    .line 310
    .line 311
    iget-object p2, v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    .line 312
    .line 313
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    check-cast p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    .line 318
    .line 319
    iget-object v3, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    if-eqz v3, :cond_16

    .line 326
    .line 327
    goto/16 :goto_f

    .line 328
    .line 329
    :cond_16
    iget-object v3, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    sub-int/2addr v3, v1

    .line 336
    :goto_b
    if-ltz v3, :cond_18

    .line 337
    .line 338
    iget-object v4, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 345
    .line 346
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mOptInOnBackInvoked:Z

    .line 347
    .line 348
    if-nez v4, :cond_17

    .line 349
    .line 350
    goto/16 :goto_f

    .line 351
    .line 352
    :cond_17
    add-int/lit8 v3, v3, -0x1

    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_18
    iget-object v3, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_19

    .line 362
    .line 363
    goto/16 :goto_f

    .line 364
    .line 365
    :cond_19
    iget-object p2, p2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    .line 366
    .line 367
    iget-object v3, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 368
    .line 369
    invoke-virtual {v3}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    if-nez v4, :cond_20

    .line 374
    .line 375
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_1a

    .line 380
    .line 381
    goto :goto_f

    .line 382
    :cond_1a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    new-array v6, v4, [I

    .line 387
    .line 388
    if-ne v4, v1, :cond_1d

    .line 389
    .line 390
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 395
    .line 396
    invoke-virtual {v3}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-eqz v4, :cond_1b

    .line 401
    .line 402
    :goto_c
    move-object v4, v5

    .line 403
    goto :goto_d

    .line 404
    :cond_1b
    invoke-virtual {v3, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->captureSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/window/TaskSnapshot;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    if-nez v4, :cond_1c

    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_1c
    iget-object v7, v3, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 412
    .line 413
    invoke-virtual {v7, p2, v4}, Lcom/android/server/wm/SnapshotCache;->putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V

    .line 414
    .line 415
    .line 416
    :goto_d
    if-eqz v4, :cond_20

    .line 417
    .line 418
    invoke-static {p2}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    aput v7, v6, v0

    .line 423
    .line 424
    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 425
    .line 426
    invoke-virtual {v3, p2, v4, v6}, Lcom/android/server/wm/ActivitySnapshotController;->addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V

    .line 427
    .line 428
    .line 429
    goto :goto_f

    .line 430
    :cond_1d
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 435
    .line 436
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 437
    .line 438
    iget-object v7, v3, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 439
    .line 440
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 441
    .line 442
    iget v8, v3, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 443
    .line 444
    invoke-virtual {v7, v4, v8}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    if-nez v7, :cond_1e

    .line 449
    .line 450
    goto :goto_f

    .line 451
    :cond_1e
    move v8, v0

    .line 452
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 453
    .line 454
    .line 455
    move-result v9

    .line 456
    if-ge v8, v9, :cond_1f

    .line 457
    .line 458
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v9

    .line 462
    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 463
    .line 464
    iget-object v10, v3, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 465
    .line 466
    check-cast v10, Lcom/android/server/wm/ActivitySnapshotCache;

    .line 467
    .line 468
    invoke-virtual {v10, v7, v9}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    .line 469
    .line 470
    .line 471
    invoke-static {v9}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    .line 472
    .line 473
    .line 474
    move-result v9

    .line 475
    aput v9, v6, v8

    .line 476
    .line 477
    add-int/lit8 v8, v8, 0x1

    .line 478
    .line 479
    goto :goto_e

    .line 480
    :cond_1f
    iget p2, v4, Lcom/android/server/wm/Task;->mUserId:I

    .line 481
    .line 482
    invoke-virtual {v3, p2, v7, v6}, Lcom/android/server/wm/ActivitySnapshotController;->addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V

    .line 483
    .line 484
    .line 485
    :cond_20
    :goto_f
    add-int/lit8 p1, p1, -0x1

    .line 486
    .line 487
    goto/16 :goto_a

    .line 488
    .line 489
    :cond_21
    return-void
.end method

.method public final onTransitionFinish(Ljava/util/ArrayList;I)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p2, v2, :cond_1

    .line 5
    .line 6
    if-ne p2, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move v3, v2

    .line 12
    :goto_1
    const/4 v4, 0x2

    .line 13
    if-eq p2, v4, :cond_2

    .line 14
    .line 15
    const/4 v4, 0x4

    .line 16
    if-ne p2, v4, :cond_3

    .line 17
    .line 18
    :cond_2
    move v0, v2

    .line 19
    :cond_3
    if-nez v3, :cond_4

    .line 20
    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    const/16 v0, 0x3e8

    .line 24
    .line 25
    if-lt p2, v0, :cond_5

    .line 26
    .line 27
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_6

    .line 32
    .line 33
    :cond_5
    return-void

    .line 34
    :cond_6
    const-wide/16 v3, 0x20

    .line 35
    .line 36
    const-string v0, "SnapshotController_analysis"

    .line 37
    .line 38
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_7

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    .line 51
    .line 52
    .line 53
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    sub-int/2addr v6, v2

    .line 63
    :goto_3
    if-ltz v6, :cond_9

    .line 64
    .line 65
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 70
    .line 71
    iget-object v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 72
    .line 73
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    if-nez v8, :cond_8

    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    if-nez v8, :cond_8

    .line 84
    .line 85
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    if-nez v8, :cond_8

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_8
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :goto_4
    add-int/lit8 v6, v6, -0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_9
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivitySnapshotController;->handleTransitionFinish(Ljava/util/ArrayList;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_a

    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_a
    iget-object v5, v0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    .line 109
    .line 110
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    sub-int/2addr v5, v2

    .line 115
    :goto_5
    if-ltz v5, :cond_b

    .line 116
    .line 117
    iget-object v6, v0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    .line 118
    .line 119
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 124
    .line 125
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v5, v5, -0x1

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_b
    iget-object v5, v0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    .line 134
    .line 135
    .line 136
    iget-object v5, v0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/android/server/wm/ActivitySnapshotController;->postProcess()V

    .line 142
    .line 143
    .line 144
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    sub-int/2addr v0, v2

    .line 149
    :goto_7
    if-ltz v0, :cond_e

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 156
    .line 157
    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    if-eqz v6, :cond_d

    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_d

    .line 170
    .line 171
    iget v8, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 172
    .line 173
    iget v9, v6, Lcom/android/server/wm/Task;->mUserId:I

    .line 174
    .line 175
    const/4 v10, 0x0

    .line 176
    const/4 v11, 0x0

    .line 177
    iget-object v7, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 178
    .line 179
    const/4 v12, 0x0

    .line 180
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZZ)Landroid/window/TaskSnapshot;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    if-eqz v5, :cond_d

    .line 185
    .line 186
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_c

    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_c

    .line 197
    .line 198
    if-eq p2, v2, :cond_d

    .line 199
    .line 200
    if-eq p2, v1, :cond_d

    .line 201
    .line 202
    :cond_c
    iget v5, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 203
    .line 204
    iget v7, v6, Lcom/android/server/wm/Task;->mUserId:I

    .line 205
    .line 206
    iget-object v8, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 207
    .line 208
    invoke-virtual {v8, v5, v7}, Lcom/android/server/wm/TaskSnapshotController;->removeAndDeleteSnapshot(II)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v6}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_d

    .line 216
    .line 217
    invoke-virtual {v8, v6}, Lcom/android/server/wm/TaskSnapshotController;->removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V

    .line 218
    .line 219
    .line 220
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_e
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final setPause(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method
