.class public final synthetic Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WallpaperController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WallpaperController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x3

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto/16 :goto_e

    .line 33
    .line 34
    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    goto/16 :goto_e

    .line 49
    .line 50
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v3, 0x0

    .line 60
    :goto_0
    const/4 v4, 0x1

    .line 61
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    iget v6, v3, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 74
    .line 75
    invoke-static {v6}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    iget v6, v3, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    .line 82
    .line 83
    and-int/lit8 v6, v6, 0x4

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    iput-boolean v4, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 88
    .line 89
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 90
    .line 91
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 92
    .line 93
    check-cast v7, Lcom/android/server/policy/PhoneWindowManager;

    .line 94
    .line 95
    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 100
    .line 101
    if-eqz v7, :cond_a

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-nez v7, :cond_5

    .line 108
    .line 109
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 110
    .line 111
    if-eqz v7, :cond_4

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 120
    .line 121
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 122
    .line 123
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 124
    .line 125
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_4

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_a

    .line 145
    .line 146
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 147
    .line 148
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 149
    .line 150
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 151
    .line 152
    invoke-virtual {v0, v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_a

    .line 157
    .line 158
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 159
    .line 160
    invoke-virtual {v0, v8}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    iput-object p1, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 167
    .line 168
    goto/16 :goto_e

    .line 169
    .line 170
    :cond_5
    :goto_1
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 171
    .line 172
    check-cast v7, Lcom/android/server/policy/PhoneWindowManager;

    .line 173
    .line 174
    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-nez v7, :cond_7

    .line 179
    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_a

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 190
    .line 191
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-eqz v7, :cond_a

    .line 198
    .line 199
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 200
    .line 201
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isAppTransitionStateIdle()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_a

    .line 206
    .line 207
    :cond_7
    :goto_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 208
    .line 209
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 210
    .line 211
    if-nez v7, :cond_9

    .line 212
    .line 213
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 214
    .line 215
    if-nez v7, :cond_9

    .line 216
    .line 217
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 218
    .line 219
    const/4 v9, -0x1

    .line 220
    if-ne v7, v9, :cond_9

    .line 221
    .line 222
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 223
    .line 224
    if-ne v0, v9, :cond_9

    .line 225
    .line 226
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 227
    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_8

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_8
    move v0, v1

    .line 238
    goto :goto_4

    .line 239
    :cond_9
    :goto_3
    move v0, v4

    .line 240
    :goto_4
    iput-boolean v0, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_a

    .line 247
    .line 248
    iput-boolean v4, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 249
    .line 250
    move v0, v4

    .line 251
    goto :goto_5

    .line 252
    :cond_a
    move v0, v1

    .line 253
    :goto_5
    if-eqz v3, :cond_b

    .line 254
    .line 255
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    if-eqz v7, :cond_b

    .line 260
    .line 261
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-interface {v3}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_b

    .line 270
    .line 271
    move v3, v4

    .line 272
    goto :goto_6

    .line 273
    :cond_b
    move v3, v1

    .line 274
    :goto_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    if-nez v7, :cond_d

    .line 279
    .line 280
    if-eqz v3, :cond_c

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_c
    move v3, v1

    .line 284
    goto :goto_8

    .line 285
    :cond_d
    :goto_7
    move v3, v4

    .line 286
    :goto_8
    iget-object v7, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 287
    .line 288
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-eqz v7, :cond_e

    .line 293
    .line 294
    goto :goto_a

    .line 295
    :cond_e
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 296
    .line 297
    if-eqz v7, :cond_12

    .line 298
    .line 299
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 300
    .line 301
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 302
    .line 303
    if-ne v9, v4, :cond_12

    .line 304
    .line 305
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 306
    .line 307
    if-eqz v9, :cond_f

    .line 308
    .line 309
    iget-object v10, v7, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 310
    .line 311
    if-eq v10, v9, :cond_10

    .line 312
    .line 313
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    invoke-virtual {v7, v9}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    if-eqz v9, :cond_12

    .line 322
    .line 323
    :cond_10
    iget-object v7, v7, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 324
    .line 325
    if-nez v7, :cond_11

    .line 326
    .line 327
    move v7, v1

    .line 328
    goto :goto_9

    .line 329
    :cond_11
    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    :goto_9
    if-eqz v7, :cond_12

    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    if-eqz v7, :cond_12

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_12
    :goto_a
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 343
    .line 344
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 345
    .line 346
    iget-object v9, v7, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 347
    .line 348
    iget-boolean v10, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 349
    .line 350
    if-eqz v10, :cond_14

    .line 351
    .line 352
    iget-boolean v7, v7, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    .line 353
    .line 354
    if-eqz v7, :cond_14

    .line 355
    .line 356
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 357
    .line 358
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 359
    .line 360
    if-ne v7, v4, :cond_14

    .line 361
    .line 362
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 363
    .line 364
    if-eqz v7, :cond_14

    .line 365
    .line 366
    invoke-virtual {v9, v7, v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 367
    .line 368
    .line 369
    move-result v7

    .line 370
    if-eqz v7, :cond_14

    .line 371
    .line 372
    :goto_b
    iput-object p1, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 373
    .line 374
    :cond_13
    move v1, v4

    .line 375
    goto :goto_e

    .line 376
    :cond_14
    if-eqz v3, :cond_1a

    .line 377
    .line 378
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 379
    .line 380
    if-eqz v3, :cond_15

    .line 381
    .line 382
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-eqz v3, :cond_1a

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_1a

    .line 394
    .line 395
    :goto_c
    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 396
    .line 397
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 398
    .line 399
    iget-boolean v3, v3, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    .line 400
    .line 401
    if-eqz v3, :cond_16

    .line 402
    .line 403
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-eqz v3, :cond_16

    .line 408
    .line 409
    goto :goto_e

    .line 410
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-eqz v3, :cond_17

    .line 415
    .line 416
    if-nez v0, :cond_17

    .line 417
    .line 418
    goto :goto_e

    .line 419
    :cond_17
    iput-object p1, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 420
    .line 421
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 422
    .line 423
    if-eqz v0, :cond_18

    .line 424
    .line 425
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 426
    .line 427
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 428
    .line 429
    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 430
    .line 431
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_18

    .line 436
    .line 437
    move v0, v4

    .line 438
    goto :goto_d

    .line 439
    :cond_18
    move v0, v1

    .line 440
    :goto_d
    iput-boolean v0, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 441
    .line 442
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 443
    .line 444
    if-ne p1, p0, :cond_19

    .line 445
    .line 446
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 447
    .line 448
    .line 449
    :cond_19
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 450
    .line 451
    if-nez p0, :cond_13

    .line 452
    .line 453
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    .line 454
    .line 455
    .line 456
    move-result p0

    .line 457
    if-eqz p0, :cond_13

    .line 458
    .line 459
    :cond_1a
    :goto_e
    return v1
.end method
