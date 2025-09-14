.class public final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "Blast sync timeout: "

    .line 4
    .line 5
    iget v3, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/16 v5, 0xb

    .line 9
    .line 10
    const/4 v6, 0x2

    .line 11
    if-eq v3, v5, :cond_26

    .line 12
    .line 13
    const/16 v5, 0xe

    .line 14
    .line 15
    if-eq v3, v5, :cond_25

    .line 16
    .line 17
    const/16 v5, 0x13

    .line 18
    .line 19
    if-eq v3, v5, :cond_24

    .line 20
    .line 21
    const/16 v5, 0x1e

    .line 22
    .line 23
    if-eq v3, v5, :cond_22

    .line 24
    .line 25
    const/16 v5, 0x20

    .line 26
    .line 27
    if-eq v3, v5, :cond_20

    .line 28
    .line 29
    const/16 v5, 0x22

    .line 30
    .line 31
    if-eq v3, v5, :cond_1d

    .line 32
    .line 33
    const/16 v7, 0x29

    .line 34
    .line 35
    if-eq v3, v7, :cond_1b

    .line 36
    .line 37
    const/16 v7, 0x3a

    .line 38
    .line 39
    if-eq v3, v7, :cond_19

    .line 40
    .line 41
    const/16 v7, 0xc8

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    if-eq v3, v7, :cond_14

    .line 45
    .line 46
    const/16 v7, 0x10

    .line 47
    .line 48
    if-eq v3, v7, :cond_13

    .line 49
    .line 50
    const/16 v7, 0x11

    .line 51
    .line 52
    const/4 v9, 0x3

    .line 53
    if-eq v3, v7, :cond_10

    .line 54
    .line 55
    const/16 v7, 0x33

    .line 56
    .line 57
    if-eq v3, v7, :cond_c

    .line 58
    .line 59
    const/16 v5, 0x34

    .line 60
    .line 61
    if-eq v3, v5, :cond_a

    .line 62
    .line 63
    packed-switch v3, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    packed-switch v3, :pswitch_data_1

    .line 67
    .line 68
    .line 69
    packed-switch v3, :pswitch_data_2

    .line 70
    .line 71
    .line 72
    packed-switch v3, :pswitch_data_3

    .line 73
    .line 74
    .line 75
    goto/16 :goto_1a

    .line 76
    .line 77
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 78
    .line 79
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 80
    .line 81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 82
    .line 83
    .line 84
    monitor-enter v0

    .line 85
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 86
    .line 87
    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    .line 88
    .line 89
    if-lez p1, :cond_0

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 92
    .line 93
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1a

    .line 104
    .line 105
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 113
    .line 114
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 115
    .line 116
    .line 117
    monitor-enter v0

    .line 118
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Lcom/android/server/wm/Task;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 136
    .line 137
    .line 138
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_1a

    .line 143
    .line 144
    :catchall_1
    move-exception p0

    .line 145
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 153
    .line 154
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 155
    .line 156
    .line 157
    monitor-enter v1

    .line 158
    :try_start_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast p0, Lcom/android/server/wm/WindowState;

    .line 161
    .line 162
    const-string p1, "WindowManager"

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    const p1, 0x7fffffff

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v8, p1}, Lcom/android/server/wm/WindowState;->finishDrawing(Landroid/view/SurfaceControl$Transaction;I)Z

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 188
    .line 189
    const/16 v0, 0x40

    .line 190
    .line 191
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_1a

    .line 199
    .line 200
    :catchall_2
    move-exception p0

    .line 201
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 202
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 207
    .line 208
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 209
    .line 210
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 211
    .line 212
    .line 213
    monitor-enter v2

    .line 214
    :try_start_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    .line 216
    instance-of v1, p1, Lcom/android/internal/os/SomeArgs;

    .line 217
    .line 218
    if-eqz v1, :cond_1

    .line 219
    .line 220
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 221
    .line 222
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Landroid/os/IBinder;

    .line 225
    .line 226
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 227
    .line 228
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 229
    .line 230
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 231
    .line 232
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 233
    .line 234
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 239
    .line 240
    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/android/server/wm/WindowManagerService;->onPointerDownOutsideFocusLocked(Lcom/android/server/wm/InputTarget;III)V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :catchall_3
    move-exception p0

    .line 245
    goto :goto_3

    .line 246
    :cond_1
    check-cast p1, Landroid/os/IBinder;

    .line 247
    .line 248
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 249
    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {p0, p1, v4, v0, v0}, Lcom/android/server/wm/WindowManagerService;->onPointerDownOutsideFocusLocked(Lcom/android/server/wm/InputTarget;III)V

    .line 255
    .line 256
    .line 257
    :goto_2
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 258
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_1a

    .line 262
    .line 263
    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 264
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 265
    .line 266
    .line 267
    throw p0

    .line 268
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 269
    .line 270
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 271
    .line 272
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 273
    .line 274
    .line 275
    monitor-enter p1

    .line 276
    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 277
    .line 278
    invoke-virtual {p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 279
    .line 280
    .line 281
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 282
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_1a

    .line 286
    .line 287
    :catchall_4
    move-exception p0

    .line 288
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 289
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 290
    .line 291
    .line 292
    throw p0

    .line 293
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 294
    .line 295
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 296
    .line 297
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 298
    .line 299
    .line 300
    monitor-enter v0

    .line 301
    :try_start_a
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 302
    .line 303
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 304
    .line 305
    if-eqz p0, :cond_2

    .line 306
    .line 307
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 308
    .line 309
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 310
    .line 311
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;

    .line 312
    .line 313
    const-wide/16 v1, 0x3e8

    .line 314
    .line 315
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    .line 317
    .line 318
    :cond_2
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 319
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_1a

    .line 323
    .line 324
    :catchall_5
    move-exception p0

    .line 325
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 326
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 327
    .line 328
    .line 329
    throw p0

    .line 330
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 331
    .line 332
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 333
    .line 334
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 335
    .line 336
    .line 337
    monitor-enter v0

    .line 338
    :try_start_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast p1, Lcom/android/server/wm/WallpaperController;

    .line 341
    .line 342
    if-eqz p1, :cond_6

    .line 343
    .line 344
    iget v2, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 345
    .line 346
    if-ne v2, v1, :cond_6

    .line 347
    .line 348
    iput v6, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 349
    .line 350
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 351
    .line 352
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 353
    .line 354
    if-eqz v2, :cond_3

    .line 355
    .line 356
    invoke-virtual {v2}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 357
    .line 358
    .line 359
    :cond_3
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 360
    .line 361
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 362
    .line 363
    iget-boolean v2, p1, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 364
    .line 365
    if-nez v2, :cond_4

    .line 366
    .line 367
    iget-object v2, p1, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 368
    .line 369
    if-eqz v2, :cond_5

    .line 370
    .line 371
    invoke-virtual {p1, v1}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 372
    .line 373
    .line 374
    iput-object v8, p1, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 378
    .line 379
    if-eqz v1, :cond_5

    .line 380
    .line 381
    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->run()V

    .line 382
    .line 383
    .line 384
    iput-object v8, p1, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 385
    .line 386
    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 387
    .line 388
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 389
    .line 390
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 391
    .line 392
    .line 393
    goto :goto_5

    .line 394
    :catchall_6
    move-exception p0

    .line 395
    goto :goto_6

    .line 396
    :cond_6
    :goto_5
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 397
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_1a

    .line 401
    .line 402
    :goto_6
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 403
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 404
    .line 405
    .line 406
    throw p0

    .line 407
    :pswitch_7
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 408
    .line 409
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 410
    .line 411
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 412
    .line 413
    .line 414
    monitor-enter p1

    .line 415
    :try_start_e
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 416
    .line 417
    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 418
    .line 419
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 420
    .line 421
    iput-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    .line 422
    .line 423
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 424
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_1a

    .line 428
    .line 429
    :catchall_7
    move-exception p0

    .line 430
    :try_start_f
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 431
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 432
    .line 433
    .line 434
    throw p0

    .line 435
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 436
    .line 437
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 438
    .line 439
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 440
    .line 441
    .line 442
    monitor-enter p1

    .line 443
    :try_start_10
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BOOT_enabled:[Z

    .line 444
    .line 445
    aget-boolean v0, v0, v6

    .line 446
    .line 447
    if-eqz v0, :cond_7

    .line 448
    .line 449
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 450
    .line 451
    const/4 v5, 0x0

    .line 452
    const/4 v6, 0x0

    .line 453
    const-wide v2, -0x1f189588730ec3ecL    # -6.42981296821985E158

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    const/4 v4, 0x0

    .line 459
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    goto :goto_7

    .line 463
    :catchall_8
    move-exception p0

    .line 464
    goto :goto_8

    .line 465
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 466
    .line 467
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 472
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 473
    .line 474
    .line 475
    if-eqz v0, :cond_27

    .line 476
    .line 477
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_1a

    .line 483
    .line 484
    :goto_8
    :try_start_11
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 485
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 486
    .line 487
    .line 488
    throw p0

    .line 489
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 490
    .line 491
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_1a

    .line 495
    .line 496
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 497
    .line 498
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 499
    .line 500
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 501
    .line 502
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mshowStrictModeViolation(Lcom/android/server/wm/WindowManagerService;II)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_1a

    .line 506
    .line 507
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    .line 509
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    .line 510
    .line 511
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 512
    .line 513
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 514
    .line 515
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 516
    .line 517
    .line 518
    monitor-enter v0

    .line 519
    :try_start_12
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_ERROR_enabled:[Z

    .line 520
    .line 521
    aget-boolean v2, v2, v9

    .line 522
    .line 523
    if-eqz v2, :cond_8

    .line 524
    .line 525
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 526
    .line 527
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 532
    .line 533
    const-string v9, "Timeout waiting for drawn: undrawn=%s"

    .line 534
    .line 535
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v10

    .line 539
    const-wide v6, 0x50eae4b7a451387fL    # 6.377566447075669E81

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    const/4 v8, 0x0

    .line 545
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    goto :goto_9

    .line 549
    :catchall_9
    move-exception p0

    .line 550
    goto :goto_b

    .line 551
    :cond_8
    :goto_9
    const-wide/16 v2, 0x20

    .line 552
    .line 553
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    if-eqz v2, :cond_9

    .line 558
    .line 559
    :goto_a
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-ge v4, v2, :cond_9

    .line 566
    .line 567
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 568
    .line 569
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 576
    .line 577
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->traceEndWaitingForWindowDrawn(Lcom/android/server/wm/WindowState;)V

    .line 581
    .line 582
    .line 583
    add-int/2addr v4, v1

    .line 584
    goto :goto_a

    .line 585
    :cond_9
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 588
    .line 589
    .line 590
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 591
    .line 592
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Landroid/util/ArrayMap;

    .line 593
    .line 594
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    check-cast p0, Landroid/os/Message;

    .line 599
    .line 600
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 601
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 602
    .line 603
    .line 604
    if-eqz p0, :cond_27

    .line 605
    .line 606
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_1a

    .line 610
    .line 611
    :goto_b
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 612
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 613
    .line 614
    .line 615
    throw p0

    .line 616
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 617
    .line 618
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    .line 619
    .line 620
    .line 621
    goto/16 :goto_1a

    .line 622
    .line 623
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 624
    .line 625
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    .line 626
    .line 627
    .line 628
    goto/16 :goto_1a

    .line 629
    .line 630
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 633
    .line 634
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 635
    .line 636
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 637
    .line 638
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 639
    .line 640
    .line 641
    monitor-enter v0

    .line 642
    :try_start_14
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 643
    .line 644
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 645
    .line 646
    and-int/lit16 v3, v3, -0x81

    .line 647
    .line 648
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 649
    .line 650
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 651
    .line 652
    if-nez v2, :cond_b

    .line 653
    .line 654
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 655
    .line 656
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 657
    .line 658
    .line 659
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 660
    .line 661
    .line 662
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 663
    .line 664
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 665
    .line 666
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 667
    .line 668
    .line 669
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 670
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 671
    .line 672
    .line 673
    goto/16 :goto_1a

    .line 674
    .line 675
    :catchall_a
    move-exception p0

    .line 676
    :try_start_15
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 677
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 678
    .line 679
    .line 680
    throw p0

    .line 681
    :cond_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 682
    .line 683
    if-eqz p1, :cond_f

    .line 684
    .line 685
    if-eq p1, v1, :cond_e

    .line 686
    .line 687
    if-eq p1, v6, :cond_d

    .line 688
    .line 689
    goto/16 :goto_1a

    .line 690
    .line 691
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 692
    .line 693
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 694
    .line 695
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 696
    .line 697
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    const-string v1, "animator_duration_scale"

    .line 702
    .line 703
    iget v2, p1, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 704
    .line 705
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    invoke-static {v0}, Landroid/view/WindowManager;->fixScale(F)F

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    iput v0, p1, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 714
    .line 715
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 716
    .line 717
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 718
    .line 719
    invoke-virtual {p0, v5, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 720
    .line 721
    .line 722
    move-result-object p0

    .line 723
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_1a

    .line 727
    .line 728
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 729
    .line 730
    sget p1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 731
    .line 732
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 733
    .line 734
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 735
    .line 736
    .line 737
    move-result-object p1

    .line 738
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 739
    .line 740
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    const v1, 0x10500d7

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 748
    .line 749
    .line 750
    move-result v0

    .line 751
    const-string/jumbo v1, "transition_animation_scale"

    .line 752
    .line 753
    .line 754
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 755
    .line 756
    .line 757
    move-result p1

    .line 758
    invoke-static {p1}, Landroid/view/WindowManager;->fixScale(F)F

    .line 759
    .line 760
    .line 761
    move-result p1

    .line 762
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 763
    .line 764
    goto/16 :goto_1a

    .line 765
    .line 766
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 767
    .line 768
    sget p1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 769
    .line 770
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 771
    .line 772
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 773
    .line 774
    .line 775
    move-result-object p1

    .line 776
    const-string/jumbo v0, "window_animation_scale"

    .line 777
    .line 778
    .line 779
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 780
    .line 781
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 782
    .line 783
    .line 784
    move-result p1

    .line 785
    invoke-static {p1}, Landroid/view/WindowManager;->fixScale(F)F

    .line 786
    .line 787
    .line 788
    move-result p1

    .line 789
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 790
    .line 791
    goto/16 :goto_1a

    .line 792
    .line 793
    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 794
    .line 795
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 796
    .line 797
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 798
    .line 799
    .line 800
    monitor-enter p1

    .line 801
    :try_start_16
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_ERROR_enabled:[Z

    .line 802
    .line 803
    aget-boolean v2, v2, v9

    .line 804
    .line 805
    if-eqz v2, :cond_11

    .line 806
    .line 807
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 808
    .line 809
    const-string v11, "App freeze timeout expired."

    .line 810
    .line 811
    const/4 v10, 0x0

    .line 812
    const/4 v12, 0x0

    .line 813
    const-wide v8, 0x168ac5e357493a5fL

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 819
    .line 820
    .line 821
    goto :goto_c

    .line 822
    :catchall_b
    move-exception p0

    .line 823
    goto :goto_e

    .line 824
    :cond_11
    :goto_c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 825
    .line 826
    iput v6, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 827
    .line 828
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    .line 829
    .line 830
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 831
    .line 832
    .line 833
    move-result v2

    .line 834
    sub-int/2addr v2, v1

    .line 835
    :goto_d
    if-ltz v2, :cond_12

    .line 836
    .line 837
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 838
    .line 839
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    .line 840
    .line 841
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v3

    .line 845
    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 846
    .line 847
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 848
    .line 849
    .line 850
    new-instance v4, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    const-string v5, "Force clearing freeze: "

    .line 853
    .line 854
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    const-string v5, "WindowManager"

    .line 865
    .line 866
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .line 868
    .line 869
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(Z)V

    .line 870
    .line 871
    .line 872
    add-int/2addr v2, v0

    .line 873
    goto :goto_d

    .line 874
    :cond_12
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 875
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 876
    .line 877
    .line 878
    goto/16 :goto_1a

    .line 879
    .line 880
    :goto_e
    :try_start_17
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 881
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 882
    .line 883
    .line 884
    throw p0

    .line 885
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 886
    .line 887
    sget p1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 888
    .line 889
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 890
    .line 891
    .line 892
    goto/16 :goto_1a

    .line 893
    .line 894
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 895
    .line 896
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 897
    .line 898
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 899
    .line 900
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 901
    .line 902
    if-eqz p1, :cond_15

    .line 903
    .line 904
    goto :goto_f

    .line 905
    :cond_15
    move v1, v4

    .line 906
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    .line 908
    .line 909
    new-instance p1, Ljava/lang/StringBuilder;

    .line 910
    .line 911
    const-string v0, "handleNotifyPogoKeyboardStatus status="

    .line 912
    .line 913
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object p1

    .line 923
    const-string v0, "PhoneWindowManagerExt"

    .line 924
    .line 925
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .line 927
    .line 928
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 929
    .line 930
    if-ne p1, v1, :cond_16

    .line 931
    .line 932
    goto/16 :goto_1a

    .line 933
    .line 934
    :cond_16
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 935
    .line 936
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 937
    .line 938
    .line 939
    move-result-object p1

    .line 940
    if-nez p1, :cond_17

    .line 941
    .line 942
    goto/16 :goto_1a

    .line 943
    .line 944
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 945
    .line 946
    if-eqz v0, :cond_18

    .line 947
    .line 948
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 949
    .line 950
    .line 951
    move-result v0

    .line 952
    if-nez v0, :cond_18

    .line 953
    .line 954
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Lcom/android/server/policy/PhoneWindowManagerExt$12;

    .line 955
    .line 956
    invoke-virtual {p1, p0, v8}, Landroid/hardware/input/InputManager;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    .line 957
    .line 958
    .line 959
    goto/16 :goto_1a

    .line 960
    .line 961
    :cond_18
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Lcom/android/server/policy/PhoneWindowManagerExt$12;

    .line 962
    .line 963
    invoke-virtual {p1, p0}, Landroid/hardware/input/InputManager;->semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V

    .line 964
    .line 965
    .line 966
    goto/16 :goto_1a

    .line 967
    .line 968
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 969
    .line 970
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 971
    .line 972
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 973
    .line 974
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 975
    .line 976
    if-ne p1, v1, :cond_1a

    .line 977
    .line 978
    goto :goto_10

    .line 979
    :cond_1a
    move v1, v4

    .line 980
    :goto_10
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManagerInternal;->setHasOverlayUi(IZ)V

    .line 981
    .line 982
    .line 983
    goto/16 :goto_1a

    .line 984
    .line 985
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 986
    .line 987
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 988
    .line 989
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 990
    .line 991
    .line 992
    monitor-enter v0

    .line 993
    :try_start_18
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast p0, Lcom/android/server/wm/DisplayContent;

    .line 996
    .line 997
    if-eqz p0, :cond_1c

    .line 998
    .line 999
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1000
    .line 1001
    .line 1002
    goto :goto_11

    .line 1003
    :catchall_c
    move-exception p0

    .line 1004
    goto :goto_12

    .line 1005
    :cond_1c
    :goto_11
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 1006
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1007
    .line 1008
    .line 1009
    goto/16 :goto_1a

    .line 1010
    .line 1011
    :goto_12
    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 1012
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1013
    .line 1014
    .line 1015
    throw p0

    .line 1016
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1017
    .line 1018
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 1023
    .line 1024
    .line 1025
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1026
    .line 1027
    check-cast p1, Lcom/android/server/wm/Session;

    .line 1028
    .line 1029
    if-eqz p1, :cond_1e

    .line 1030
    .line 1031
    :try_start_1a
    iget-object p0, p1, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 1032
    .line 1033
    invoke-interface {p0, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1

    .line 1034
    .line 1035
    .line 1036
    goto/16 :goto_1a

    .line 1037
    .line 1038
    :cond_1e
    new-instance p1, Ljava/util/ArrayList;

    .line 1039
    .line 1040
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .line 1042
    .line 1043
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1044
    .line 1045
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1046
    .line 1047
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1048
    .line 1049
    .line 1050
    monitor-enter v2

    .line 1051
    move v3, v4

    .line 1052
    :goto_13
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1053
    .line 1054
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    .line 1055
    .line 1056
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 1057
    .line 1058
    .line 1059
    move-result v5

    .line 1060
    if-ge v3, v5, :cond_1f

    .line 1061
    .line 1062
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1063
    .line 1064
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    .line 1065
    .line 1066
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v5

    .line 1070
    check-cast v5, Lcom/android/server/wm/Session;

    .line 1071
    .line 1072
    iget-object v5, v5, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 1073
    .line 1074
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    .line 1076
    .line 1077
    add-int/2addr v3, v1

    .line 1078
    goto :goto_13

    .line 1079
    :catchall_d
    move-exception p0

    .line 1080
    goto :goto_15

    .line 1081
    :cond_1f
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 1082
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1083
    .line 1084
    .line 1085
    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1086
    .line 1087
    .line 1088
    move-result p0

    .line 1089
    if-ge v4, p0, :cond_27

    .line 1090
    .line 1091
    :try_start_1c
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object p0

    .line 1095
    check-cast p0, Landroid/view/IWindowSessionCallback;

    .line 1096
    .line 1097
    invoke-interface {p0, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_0

    .line 1098
    .line 1099
    .line 1100
    :catch_0
    add-int/2addr v4, v1

    .line 1101
    goto :goto_14

    .line 1102
    :goto_15
    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    .line 1103
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1104
    .line 1105
    .line 1106
    throw p0

    .line 1107
    :cond_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1108
    .line 1109
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 1110
    .line 1111
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1112
    .line 1113
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1114
    .line 1115
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1116
    .line 1117
    .line 1118
    monitor-enter v0

    .line 1119
    :try_start_1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 1120
    .line 1121
    .line 1122
    move-result p0

    .line 1123
    if-eqz p0, :cond_21

    .line 1124
    .line 1125
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 1126
    .line 1127
    .line 1128
    move-result-object p0

    .line 1129
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1130
    .line 1131
    .line 1132
    goto :goto_16

    .line 1133
    :catchall_e
    move-exception p0

    .line 1134
    goto :goto_17

    .line 1135
    :cond_21
    :goto_16
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    .line 1136
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_1a

    .line 1140
    .line 1141
    :goto_17
    :try_start_1f
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    .line 1142
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1143
    .line 1144
    .line 1145
    throw p0

    .line 1146
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1147
    .line 1148
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1149
    .line 1150
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1151
    .line 1152
    .line 1153
    monitor-enter p1

    .line 1154
    :try_start_20
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1155
    .line 1156
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 1157
    .line 1158
    if-eqz v0, :cond_23

    .line 1159
    .line 1160
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 1161
    .line 1162
    const-string v0, "client-timeout"

    .line 1163
    .line 1164
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 1165
    .line 1166
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 1167
    .line 1168
    .line 1169
    goto :goto_18

    .line 1170
    :catchall_f
    move-exception p0

    .line 1171
    goto :goto_19

    .line 1172
    :cond_23
    :goto_18
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 1173
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_1a

    .line 1177
    .line 1178
    :goto_19
    :try_start_21
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    .line 1179
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1180
    .line 1181
    .line 1182
    throw p0

    .line 1183
    :cond_24
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1184
    .line 1185
    iget-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1186
    .line 1187
    if-eqz v0, :cond_27

    .line 1188
    .line 1189
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1190
    .line 1191
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1192
    .line 1193
    .line 1194
    monitor-enter p1

    .line 1195
    :try_start_22
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1196
    .line 1197
    iput-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1198
    .line 1199
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    .line 1200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1201
    .line 1202
    .line 1203
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1204
    .line 1205
    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/WindowManagerService;)V

    .line 1206
    .line 1207
    .line 1208
    goto :goto_1a

    .line 1209
    :catchall_10
    move-exception p0

    .line 1210
    :try_start_23
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    .line 1211
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1212
    .line 1213
    .line 1214
    throw p0

    .line 1215
    :cond_25
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1216
    .line 1217
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1218
    .line 1219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1220
    .line 1221
    .line 1222
    move-result-object p1

    .line 1223
    const-string/jumbo v0, "window_animation_scale"

    .line 1224
    .line 1225
    .line 1226
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1227
    .line 1228
    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 1229
    .line 1230
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1231
    .line 1232
    .line 1233
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1234
    .line 1235
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1236
    .line 1237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1238
    .line 1239
    .line 1240
    move-result-object p1

    .line 1241
    const-string/jumbo v0, "transition_animation_scale"

    .line 1242
    .line 1243
    .line 1244
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1245
    .line 1246
    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 1247
    .line 1248
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1249
    .line 1250
    .line 1251
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1252
    .line 1253
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1254
    .line 1255
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1256
    .line 1257
    .line 1258
    move-result-object p1

    .line 1259
    const-string v0, "animator_duration_scale"

    .line 1260
    .line 1261
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1262
    .line 1263
    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 1264
    .line 1265
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1266
    .line 1267
    .line 1268
    goto :goto_1a

    .line 1269
    :cond_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1270
    .line 1271
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 1272
    .line 1273
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1274
    .line 1275
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1276
    .line 1277
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1278
    .line 1279
    .line 1280
    monitor-enter p0

    .line 1281
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1282
    .line 1283
    .line 1284
    const-string v0, "WindowManager"

    .line 1285
    .line 1286
    const-string v2, "Window freeze timeout expired."

    .line 1287
    .line 1288
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    .line 1290
    .line 1291
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1292
    .line 1293
    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 1294
    .line 1295
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    .line 1296
    .line 1297
    const/4 v2, 0x6

    .line 1298
    invoke-direct {v0, v2, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/DisplayContent;)V

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1302
    .line 1303
    .line 1304
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1305
    .line 1306
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1307
    .line 1308
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 1309
    .line 1310
    .line 1311
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    .line 1312
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1313
    .line 1314
    .line 1315
    :catch_1
    :cond_27
    :goto_1a
    return-void

    .line 1316
    :catchall_11
    move-exception p1

    .line 1317
    :try_start_25
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    .line 1318
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1319
    .line 1320
    .line 1321
    throw p1

    .line 1322
    nop

    .line 1323
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    :pswitch_data_3
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
