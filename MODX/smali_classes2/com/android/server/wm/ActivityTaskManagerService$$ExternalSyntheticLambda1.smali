.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-boolean v8, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$1:Z

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$2:Z

    .line 8
    .line 9
    move-object/from16 v2, p1

    .line 10
    .line 11
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 14
    .line 15
    iget v9, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    invoke-virtual {v2, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    const-string v2, "ActivityTaskManager"

    .line 24
    .line 25
    if-nez v10, :cond_0

    .line 26
    .line 27
    const-string/jumbo v0, "setKeyguardShown called on non-existent display "

    .line 28
    .line 29
    .line 30
    invoke-static {v9, v0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    iget-object v3, v10, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 36
    .line 37
    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    .line 38
    .line 39
    and-int/lit16 v3, v3, 0x200

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const-string/jumbo v0, "setKeyguardShown ignoring always unlocked display "

    .line 44
    .line 45
    .line 46
    invoke-static {v9, v0, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v1, v9}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    iget-boolean v2, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mWakeAndUnlock:Z

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    if-ne v8, v0, :cond_2

    .line 61
    .line 62
    iput-boolean v12, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mWakeAndUnlock:Z

    .line 63
    .line 64
    :cond_2
    iget-boolean v2, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 65
    .line 66
    const/4 v13, 0x1

    .line 67
    if-eq v0, v2, :cond_3

    .line 68
    .line 69
    move v14, v13

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move v14, v12

    .line 72
    :goto_0
    if-eqz v2, :cond_4

    .line 73
    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    move v2, v13

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move v2, v12

    .line 79
    :goto_1
    iget-boolean v3, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 80
    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    if-eqz v8, :cond_5

    .line 84
    .line 85
    move v15, v13

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    move v15, v12

    .line 88
    :goto_2
    iget-boolean v3, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 89
    .line 90
    if-eq v8, v3, :cond_6

    .line 91
    .line 92
    iget-boolean v3, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mWakeAndUnlock:Z

    .line 93
    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    :cond_6
    if-eqz v15, :cond_8

    .line 97
    .line 98
    if-nez v2, :cond_8

    .line 99
    .line 100
    :cond_7
    move/from16 v16, v13

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_8
    move/from16 v16, v12

    .line 104
    .line 105
    :goto_3
    if-eqz v2, :cond_9

    .line 106
    .line 107
    invoke-virtual {v1, v12}, Lcom/android/server/wm/KeyguardController;->updateDeferTransitionForAod(Z)V

    .line 108
    .line 109
    .line 110
    :cond_9
    if-nez v16, :cond_a

    .line 111
    .line 112
    if-nez v14, :cond_a

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_a
    iget-boolean v5, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 120
    .line 121
    iget-boolean v6, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 122
    .line 123
    const-string/jumbo v7, "setKeyguardShown"

    .line 124
    .line 125
    .line 126
    move v2, v9

    .line 127
    move v3, v8

    .line 128
    move v4, v0

    .line 129
    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIIILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    if-nez v9, :cond_c

    .line 133
    .line 134
    xor-int v2, v0, v8

    .line 135
    .line 136
    if-nez v2, :cond_b

    .line 137
    .line 138
    if-eqz v0, :cond_c

    .line 139
    .line 140
    if-eqz v14, :cond_c

    .line 141
    .line 142
    if-eqz v16, :cond_c

    .line 143
    .line 144
    :cond_b
    iget-boolean v2, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 145
    .line 146
    if-nez v2, :cond_c

    .line 147
    .line 148
    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 149
    .line 150
    iget v2, v2, Landroid/view/DisplayInfo;->state:I

    .line 151
    .line 152
    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_c

    .line 157
    .line 158
    iget-object v2, v1, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 159
    .line 160
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 161
    .line 162
    invoke-virtual {v2, v12}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 163
    .line 164
    .line 165
    :cond_c
    iput-boolean v8, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 166
    .line 167
    iput-boolean v0, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 168
    .line 169
    const/4 v2, 0x0

    .line 170
    if-nez v9, :cond_e

    .line 171
    .line 172
    if-eqz v16, :cond_e

    .line 173
    .line 174
    if-eqz v8, :cond_e

    .line 175
    .line 176
    iget-object v3, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 177
    .line 178
    if-eqz v3, :cond_e

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_e

    .line 185
    .line 186
    invoke-virtual {v10, v13, v12}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    if-eqz v3, :cond_d

    .line 191
    .line 192
    invoke-virtual {v3, v12}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    goto :goto_4

    .line 197
    :cond_d
    move-object v3, v2

    .line 198
    :goto_4
    if-eqz v3, :cond_e

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-nez v3, :cond_e

    .line 205
    .line 206
    iget-object v3, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 209
    .line 210
    .line 211
    :cond_e
    const/4 v3, 0x3

    .line 212
    if-eqz v16, :cond_13

    .line 213
    .line 214
    iput-boolean v12, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 215
    .line 216
    if-eqz v8, :cond_f

    .line 217
    .line 218
    iput-boolean v12, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    .line 219
    .line 220
    :cond_f
    if-nez v15, :cond_10

    .line 221
    .line 222
    invoke-static {}, Lcom/android/window/flags/Flags;->keyguardAppearTransition()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_14

    .line 227
    .line 228
    if-eqz v8, :cond_14

    .line 229
    .line 230
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 231
    .line 232
    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    .line 233
    .line 234
    invoke-static {v0}, Landroid/view/Display;->isOffState(I)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-nez v0, :cond_14

    .line 239
    .line 240
    :cond_10
    invoke-static {}, Lcom/android/window/flags/Flags;->keyguardAppearTransition()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_11

    .line 245
    .line 246
    move-object v0, v10

    .line 247
    goto :goto_5

    .line 248
    :cond_11
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 249
    .line 250
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 251
    .line 252
    :goto_5
    const/16 v4, 0x800

    .line 253
    .line 254
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 255
    .line 256
    .line 257
    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 258
    .line 259
    invoke-virtual {v5, v3, v4, v2, v0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 260
    .line 261
    .line 262
    invoke-static {}, Lcom/android/window/flags/Flags;->keyguardAppearTransition()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_12

    .line 267
    .line 268
    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 269
    .line 270
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 271
    .line 272
    .line 273
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_13
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_AOD_APPEAR:Z

    .line 278
    .line 279
    if-eqz v4, :cond_14

    .line 280
    .line 281
    if-eqz v14, :cond_14

    .line 282
    .line 283
    if-eqz v0, :cond_14

    .line 284
    .line 285
    const v0, 0x40800

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10, v3, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 289
    .line 290
    .line 291
    iget-object v4, v10, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 292
    .line 293
    invoke-virtual {v4, v3, v0, v2, v10}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 294
    .line 295
    .line 296
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 302
    .line 303
    .line 304
    :cond_14
    :goto_6
    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 305
    .line 306
    .line 307
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 310
    .line 311
    .line 312
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0, v12}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    .line 320
    .line 321
    .line 322
    if-eqz v14, :cond_15

    .line 323
    .line 324
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 327
    .line 328
    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 329
    .line 330
    .line 331
    :cond_15
    :goto_7
    return-void
.end method
