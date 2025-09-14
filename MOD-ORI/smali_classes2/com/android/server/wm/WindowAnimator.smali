.class public final Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

.field public final mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

.field public mAnimationFrameCallbackScheduled:Z

.field public mBulkUpdateParams:I

.field public mChoreographer:Landroid/view/Choreographer;

.field public mCurrentTime:J

.field public mInExecuteAfterPrepareSurfacesRunnables:Z

.field public mInitialized:Z

.field public mLastRootAnimating:Z

.field public mLastWindowFreezeSource:Lcom/android/server/wm/WindowState;

.field public mNotifyWhenNoAnimation:Z

.field public mRunningExpensiveAnimations:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mNotifyWhenNoAnimation:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v1, 0x0

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final animate(J)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x5

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v4, v3

    .line 36
    :goto_0
    const-wide/32 v5, 0xf4240

    .line 37
    .line 38
    .line 39
    div-long/2addr p1, v5

    .line 40
    iput-wide p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 44
    .line 45
    iput-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 46
    .line 47
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    aget-boolean v6, p2, v5

    .line 51
    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 55
    .line 56
    const-wide v8, -0x4a6312243002c0e8L    # -1.9330192995483828E-50

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    .line 68
    .line 69
    .line 70
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 71
    .line 72
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    move v8, p1

    .line 79
    :goto_1
    if-ge v8, v7, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Lcom/android/server/wm/DisplayContent;

    .line 86
    .line 87
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->updateWindowsForAnimator()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    add-int/lit8 v8, v8, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v4

    .line 97
    move v9, p1

    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :cond_4
    move v8, p1

    .line 101
    move v9, v8

    .line 102
    :goto_2
    if-ge v8, v7, :cond_a

    .line 103
    .line 104
    :try_start_1
    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 109
    .line 110
    if-nez v2, :cond_5

    .line 111
    .line 112
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catch_1
    move-exception v4

    .line 117
    goto :goto_6

    .line 118
    :cond_5
    :goto_3
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_6

    .line 123
    .line 124
    iget v11, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 125
    .line 126
    invoke-virtual {v6, v11}, Lcom/android/server/wm/AccessibilityController;->recomputeMagnifiedRegionAndDrawMagnifiedRegionBorderIfNeeded(I)V

    .line 127
    .line 128
    .line 129
    :cond_6
    const/4 v11, -0x1

    .line 130
    invoke-virtual {v10, v4, v11}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 131
    .line 132
    .line 133
    move-result v11
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    if-eqz v11, :cond_8

    .line 135
    .line 136
    :try_start_2
    iget-boolean v9, v10, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    .line 137
    .line 138
    if-nez v9, :cond_7

    .line 139
    .line 140
    iput-boolean v1, v10, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    .line 141
    .line 142
    invoke-virtual {v10, v1}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catch_2
    move-exception v4

    .line 147
    move v9, v1

    .line 148
    goto :goto_6

    .line 149
    :cond_7
    :goto_4
    move v9, v1

    .line 150
    goto :goto_5

    .line 151
    :cond_8
    :try_start_3
    iget-boolean v11, v10, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    .line 152
    .line 153
    if-eqz v11, :cond_9

    .line 154
    .line 155
    iput-boolean p1, v10, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    .line 156
    .line 157
    invoke-virtual {v10, p1}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_5
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 161
    .line 162
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    invoke-virtual {v11, v10}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 167
    .line 168
    .line 169
    add-int/lit8 v8, v8, 0x1

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_a
    iget-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 173
    .line 174
    if-eqz v4, :cond_b

    .line 175
    .line 176
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 177
    .line 178
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 179
    .line 180
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    .line 181
    .line 182
    invoke-virtual {v4, v6}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 183
    .line 184
    .line 185
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 186
    .line 187
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    .line 188
    .line 189
    if-eqz v4, :cond_c

    .line 190
    .line 191
    invoke-virtual {v4}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 192
    .line 193
    .line 194
    goto :goto_7

    .line 195
    :goto_6
    const-string v6, "WindowManager"

    .line 196
    .line 197
    const-string v7, "Unhandled exception in Window Manager"

    .line 198
    .line 199
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .line 201
    .line 202
    :cond_c
    :goto_7
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    move v6, p1

    .line 209
    move v7, v6

    .line 210
    :goto_8
    if-ge v6, v4, :cond_f

    .line 211
    .line 212
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 213
    .line 214
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 219
    .line 220
    iget v8, v8, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 221
    .line 222
    and-int/lit8 v10, v8, 0x4

    .line 223
    .line 224
    if-eqz v10, :cond_d

    .line 225
    .line 226
    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 227
    .line 228
    or-int/2addr v10, v5

    .line 229
    iput v10, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 230
    .line 231
    :cond_d
    if-eqz v8, :cond_e

    .line 232
    .line 233
    move v7, v1

    .line 234
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_f
    iget v4, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 238
    .line 239
    if-nez v4, :cond_10

    .line 240
    .line 241
    iget-boolean v4, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 242
    .line 243
    if-eqz v4, :cond_14

    .line 244
    .line 245
    :cond_10
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 246
    .line 247
    iget-object v6, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 248
    .line 249
    iget v8, v6, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 250
    .line 251
    and-int/lit8 v10, v8, 0x1

    .line 252
    .line 253
    if-eqz v10, :cond_11

    .line 254
    .line 255
    iput-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 256
    .line 257
    move v10, v1

    .line 258
    goto :goto_9

    .line 259
    :cond_11
    move v10, p1

    .line 260
    :goto_9
    iget-boolean v11, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 261
    .line 262
    if-eqz v11, :cond_12

    .line 263
    .line 264
    iget-object v6, v6, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Lcom/android/server/wm/WindowState;

    .line 265
    .line 266
    iput-object v6, v0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Lcom/android/server/wm/WindowState;

    .line 267
    .line 268
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 269
    .line 270
    if-eqz v4, :cond_12

    .line 271
    .line 272
    move v10, v1

    .line 273
    :cond_12
    and-int/lit8 v4, v8, 0x2

    .line 274
    .line 275
    if-eqz v4, :cond_13

    .line 276
    .line 277
    iput-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 278
    .line 279
    :cond_13
    if-eqz v10, :cond_14

    .line 280
    .line 281
    move v0, v1

    .line 282
    goto :goto_a

    .line 283
    :cond_14
    move v0, p1

    .line 284
    :goto_a
    if-nez v7, :cond_15

    .line 285
    .line 286
    if-eqz v0, :cond_16

    .line 287
    .line 288
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 293
    .line 294
    .line 295
    :cond_16
    const-string v0, "animating"

    .line 296
    .line 297
    const-wide/16 v6, 0x20

    .line 298
    .line 299
    if-eqz v9, :cond_17

    .line 300
    .line 301
    iget-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    .line 302
    .line 303
    if-nez v4, :cond_17

    .line 304
    .line 305
    invoke-static {v6, v7, v0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    :cond_17
    if-nez v9, :cond_18

    .line 309
    .line 310
    iget-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    .line 311
    .line 312
    if-eqz v4, :cond_18

    .line 313
    .line 314
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 315
    .line 316
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 317
    .line 318
    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 319
    .line 320
    .line 321
    invoke-static {v6, v7, v0, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    :cond_18
    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    .line 325
    .line 326
    if-nez v2, :cond_1b

    .line 327
    .line 328
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 329
    .line 330
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 331
    .line 332
    const/16 v4, 0xb

    .line 333
    .line 334
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_19

    .line 339
    .line 340
    iget-boolean v3, p0, Lcom/android/server/wm/WindowAnimator;->mRunningExpensiveAnimations:Z

    .line 341
    .line 342
    if-nez v3, :cond_19

    .line 343
    .line 344
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SnapshotController;->setPause(Z)V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 350
    .line 351
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    .line 352
    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_19
    if-nez v2, :cond_1a

    .line 356
    .line 357
    iget-boolean v3, p0, Lcom/android/server/wm/WindowAnimator;->mRunningExpensiveAnimations:Z

    .line 358
    .line 359
    if-eqz v3, :cond_1a

    .line 360
    .line 361
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 362
    .line 363
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SnapshotController;->setPause(Z)V

    .line 364
    .line 365
    .line 366
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 367
    .line 368
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;

    .line 369
    .line 370
    .line 371
    :cond_1a
    :goto_b
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mRunningExpensiveAnimations:Z

    .line 372
    .line 373
    :cond_1b
    const-string v0, "applyTransaction"

    .line 374
    .line 375
    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 379
    .line 380
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 381
    .line 382
    .line 383
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 387
    .line 388
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    .line 389
    .line 390
    iget-boolean v2, v0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    .line 391
    .line 392
    if-nez v2, :cond_1c

    .line 393
    .line 394
    goto :goto_c

    .line 395
    :cond_1c
    iget-boolean v2, v0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 396
    .line 397
    if-eqz v2, :cond_1e

    .line 398
    .line 399
    iget-boolean v2, v0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    .line 400
    .line 401
    if-eqz v2, :cond_1d

    .line 402
    .line 403
    goto :goto_c

    .line 404
    :cond_1d
    iput-boolean v1, v0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    .line 405
    .line 406
    iget-object v2, v0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    .line 407
    .line 408
    iget-object v0, v0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

    .line 409
    .line 410
    invoke-virtual {v2, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 411
    .line 412
    .line 413
    goto :goto_c

    .line 414
    :cond_1e
    const-string v2, "WindowAnimator"

    .line 415
    .line 416
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :goto_c
    aget-boolean p2, p2, v5

    .line 420
    .line 421
    if-eqz p2, :cond_1f

    .line 422
    .line 423
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 424
    .line 425
    const-wide v3, -0x376c11a3a0d0c7a2L    # -4.340608548080452E41

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    const/4 v5, 0x0

    .line 431
    const/4 v6, 0x0

    .line 432
    const/4 v7, 0x0

    .line 433
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :cond_1f
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 437
    .line 438
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 439
    .line 440
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 441
    .line 442
    invoke-virtual {p2}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    .line 443
    .line 444
    .line 445
    iget-boolean p2, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    .line 446
    .line 447
    if-eqz p2, :cond_20

    .line 448
    .line 449
    goto :goto_e

    .line 450
    :cond_20
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    .line 451
    .line 452
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result p2

    .line 458
    move v0, p1

    .line 459
    :goto_d
    if-ge v0, p2, :cond_21

    .line 460
    .line 461
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Ljava/lang/Runnable;

    .line 468
    .line 469
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 470
    .line 471
    .line 472
    add-int/lit8 v0, v0, 0x1

    .line 473
    .line 474
    goto :goto_d

    .line 475
    :cond_21
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 478
    .line 479
    .line 480
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    .line 481
    .line 482
    :goto_e
    return-void
.end method
