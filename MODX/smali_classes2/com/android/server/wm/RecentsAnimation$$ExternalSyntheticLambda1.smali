.class public final synthetic Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimation;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/RecentsAnimation;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/wm/RecentsAnimationController;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/RecentsAnimation;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->f$2:Z

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/wm/RecentsAnimationController;

    .line 10
    .line 11
    const-string v4, "RecentsAnimation"

    .line 12
    .line 13
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 14
    .line 15
    iget-object v6, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 16
    .line 17
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 18
    .line 19
    const-wide/16 v8, 0x20

    .line 20
    .line 21
    const-string v10, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    .line 22
    .line 23
    invoke-static {v8, v9, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v10, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 27
    .line 28
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 29
    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    :try_start_0
    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 33
    .line 34
    .line 35
    iget v12, v1, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 36
    .line 37
    invoke-virtual {v5, v11, v12}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    if-eqz v12, :cond_1

    .line 42
    .line 43
    iget-object v14, v1, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    .line 44
    .line 45
    if-nez v14, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v14, v12}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    if-eqz v15, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :catch_0
    move-exception v0

    .line 59
    goto/16 :goto_7

    .line 60
    .line 61
    :cond_1
    :goto_0
    const/4 v14, 0x0

    .line 62
    :goto_1
    sget-object v20, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 63
    .line 64
    aget-boolean v15, v20, v11

    .line 65
    .line 66
    if-eqz v15, :cond_2

    .line 67
    .line 68
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    iget-object v8, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    .line 77
    .line 78
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    sget-object v21, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 83
    .line 84
    filled-new-array {v15, v13, v8}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v26

    .line 88
    const-wide v22, 0x30ee479acb283e45L    # 5.355533154978095E-73

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    const/16 v24, 0x0

    .line 94
    .line 95
    const/16 v25, 0x0

    .line 96
    .line 97
    invoke-static/range {v21 .. v26}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_2
    if-nez v14, :cond_4

    .line 101
    .line 102
    iput-boolean v11, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 103
    .line 104
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 105
    .line 106
    .line 107
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    :goto_2
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {v1, v11}, Lcom/android/server/wm/RecentsAnimation;->setProcessAnimating(Z)V

    .line 121
    .line 122
    .line 123
    const-wide/16 v1, 0x20

    .line 124
    .line 125
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_6

    .line 129
    .line 130
    :cond_4
    :try_start_1
    iput-boolean v11, v14, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 131
    .line 132
    const/4 v8, 0x3

    .line 133
    const/4 v9, 0x1

    .line 134
    if-ne v2, v9, :cond_6

    .line 135
    .line 136
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    if-eqz v3, :cond_5

    .line 142
    .line 143
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 144
    .line 145
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 146
    .line 147
    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 148
    .line 149
    const-string v19, "RecentsAnimation.onAnimationFinished()"

    .line 150
    .line 151
    const/16 v18, 0x0

    .line 152
    .line 153
    const/4 v15, 0x1

    .line 154
    const/16 v16, 0x0

    .line 155
    .line 156
    move-object v13, v12

    .line 157
    move-object v14, v0

    .line 158
    move-object/from16 v17, v2

    .line 159
    .line 160
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_5
    const-string v0, "RecentsAnimation.onAnimationFinished()"

    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    invoke-virtual {v12, v0, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 168
    .line 169
    .line 170
    :goto_3
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 171
    .line 172
    invoke-virtual {v13}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToAny()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    new-instance v0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;

    .line 179
    .line 180
    const/4 v2, 0x1

    .line 181
    invoke-direct {v0, v2}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-eq v0, v12, :cond_7

    .line 189
    .line 190
    aget-boolean v2, v20, v8

    .line 191
    .line 192
    if-eqz v2, :cond_7

    .line 193
    .line 194
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v18

    .line 206
    const-wide v14, -0x52ba5a1063b8c48fL    # -1.3284121922118717E-90

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    const/16 v17, 0x0

    .line 214
    .line 215
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_6
    const/4 v3, 0x2

    .line 220
    if-ne v2, v3, :cond_9

    .line 221
    .line 222
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {v12, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 232
    .line 233
    .line 234
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 235
    .line 236
    invoke-virtual {v13}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToAny()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_7

    .line 241
    .line 242
    invoke-static {v12}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    .line 247
    .line 248
    if-eqz v2, :cond_7

    .line 249
    .line 250
    if-eq v0, v2, :cond_7

    .line 251
    .line 252
    aget-boolean v2, v20, v8

    .line 253
    .line 254
    if-eqz v2, :cond_7

    .line 255
    .line 256
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    .line 261
    .line 262
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v18

    .line 274
    const-wide v14, -0x51cb9c55c51dc63dL    # -4.0998117041693585E-86

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    const/16 v16, 0x0

    .line 280
    .line 281
    const/16 v17, 0x0

    .line 282
    .line 283
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_7
    :goto_4
    const-string v0, "[TWODND] Clear mIsAnimatingByRecentsAndDragSourceTask"

    .line 287
    .line 288
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 292
    .line 293
    iget-object v0, v0, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    .line 294
    .line 295
    if-eqz v0, :cond_8

    .line 296
    .line 297
    iput-boolean v11, v0, Lcom/android/server/wm/Task;->mIsAnimatingByRecentsAndDragSourceTask:Z

    .line 298
    .line 299
    :cond_8
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    .line 300
    .line 301
    .line 302
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 305
    .line 306
    .line 307
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .line 321
    .line 322
    iput-boolean v11, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 323
    .line 324
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 325
    .line 326
    .line 327
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_3

    .line 334
    .line 335
    goto/16 :goto_2

    .line 336
    .line 337
    :cond_9
    :try_start_2
    iget-boolean v2, v0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    .line 338
    .line 339
    if-eqz v2, :cond_a

    .line 340
    .line 341
    iget-boolean v0, v0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    .line 342
    .line 343
    if-eqz v0, :cond_a

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_a
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_b

    .line 351
    .line 352
    const/4 v0, 0x0

    .line 353
    invoke-virtual {v12, v9, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    .line 355
    .line 356
    :cond_b
    :goto_5
    iput-boolean v11, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 357
    .line 358
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 359
    .line 360
    .line 361
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 362
    .line 363
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_3

    .line 368
    .line 369
    goto/16 :goto_2

    .line 370
    .line 371
    :goto_6
    return-void

    .line 372
    :goto_7
    :try_start_3
    const-string v2, "Failed to clean up recents activity"

    .line 373
    .line 374
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .line 376
    .line 377
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    :goto_8
    iput-boolean v11, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 379
    .line 380
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 381
    .line 382
    .line 383
    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 384
    .line 385
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-eqz v2, :cond_c

    .line 390
    .line 391
    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 392
    .line 393
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 394
    .line 395
    .line 396
    :cond_c
    invoke-virtual {v1, v11}, Lcom/android/server/wm/RecentsAnimation;->setProcessAnimating(Z)V

    .line 397
    .line 398
    .line 399
    const-wide/16 v1, 0x20

    .line 400
    .line 401
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 402
    .line 403
    .line 404
    throw v0
.end method
