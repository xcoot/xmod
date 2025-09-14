.class public final Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlpha:F

.field public mAnimationIsEntrance:Z

.field public final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field public final mAttrType:I

.field public final mContext:Landroid/content/Context;

.field public mDrawState:I

.field public mEnterAnimationPending:Z

.field public mEnteringAnimation:Z

.field public final mIsWallpaper:Z

.field public mLastAlpha:F

.field public mLastHidden:Z

.field public mPopOverAlpha:F

.field public mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSession:Lcom/android/server/wm/Session;

.field public mShownAlpha:F

.field public mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

.field public final mSystemDecorRect:Landroid/graphics/Rect;

.field public final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field public final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 10
    .line 11
    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 43
    .line 44
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 45
    .line 46
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final applyAnimationLocked(IZ)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    iget-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 17
    .line 18
    if-ne v4, v2, :cond_0

    .line 19
    .line 20
    return v5

    .line 21
    :cond_0
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 24
    .line 25
    const/16 v6, 0x7db

    .line 26
    .line 27
    if-ne v4, v6, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 34
    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 39
    .line 40
    .line 41
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    return v6

    .line 54
    :cond_2
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SHELL_TRANSITION:Z

    .line 55
    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 65
    .line 66
    if-nez v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    return v6

    .line 75
    :cond_3
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1c

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 88
    .line 89
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 90
    .line 91
    const/4 v8, 0x2

    .line 92
    aget-boolean v9, v7, v8

    .line 93
    .line 94
    if-eqz v9, :cond_4

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    int-to-long v10, v1

    .line 104
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 105
    .line 106
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v17

    .line 114
    const/16 v16, 0x0

    .line 115
    .line 116
    const-wide v13, -0x67141f488b6fcf64L

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    const/4 v15, 0x4

    .line 122
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object v9, v4, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 126
    .line 127
    iget-object v9, v9, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 128
    .line 129
    const/4 v10, -0x1

    .line 130
    if-eqz v9, :cond_a

    .line 131
    .line 132
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    iget-object v12, v9, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 137
    .line 138
    iget-object v12, v12, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 139
    .line 140
    iget-object v13, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 141
    .line 142
    if-ne v3, v13, :cond_7

    .line 143
    .line 144
    iget-object v12, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 145
    .line 146
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 147
    .line 148
    const/high16 v13, 0x10000000

    .line 149
    .line 150
    and-int/2addr v12, v13

    .line 151
    if-eqz v12, :cond_5

    .line 152
    .line 153
    move v12, v5

    .line 154
    goto :goto_0

    .line 155
    :cond_5
    move v12, v6

    .line 156
    :goto_0
    invoke-virtual {v11}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    if-eqz v13, :cond_6

    .line 161
    .line 162
    iget-object v9, v9, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 163
    .line 164
    if-nez v9, :cond_6

    .line 165
    .line 166
    move v9, v5

    .line 167
    goto :goto_1

    .line 168
    :cond_6
    move v9, v6

    .line 169
    :goto_1
    if-nez v12, :cond_9

    .line 170
    .line 171
    if-eqz v9, :cond_a

    .line 172
    .line 173
    iget v9, v11, Lcom/samsung/android/cover/CoverState;->type:I

    .line 174
    .line 175
    packed-switch v9, :pswitch_data_0

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    iget-object v12, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 180
    .line 181
    if-ne v3, v12, :cond_a

    .line 182
    .line 183
    if-eqz v11, :cond_a

    .line 184
    .line 185
    iget v12, v11, Lcom/samsung/android/cover/CoverState;->type:I

    .line 186
    .line 187
    packed-switch v12, :pswitch_data_1

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :pswitch_0
    iget-boolean v11, v11, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 192
    .line 193
    xor-int/lit8 v12, v11, 0x1

    .line 194
    .line 195
    if-nez v12, :cond_8

    .line 196
    .line 197
    iget-boolean v12, v9, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    .line 198
    .line 199
    if-nez v12, :cond_a

    .line 200
    .line 201
    :cond_8
    iput-boolean v11, v9, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    .line 202
    .line 203
    :cond_9
    :goto_2
    :pswitch_1
    move v4, v10

    .line 204
    goto :goto_4

    .line 205
    :cond_a
    :goto_3
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 206
    .line 207
    if-eqz v9, :cond_b

    .line 208
    .line 209
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 210
    .line 211
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 212
    .line 213
    iget v4, v4, Landroid/view/DisplayInfo;->flags:I

    .line 214
    .line 215
    const v9, 0x8000

    .line 216
    .line 217
    .line 218
    and-int/2addr v4, v9

    .line 219
    if-eqz v4, :cond_b

    .line 220
    .line 221
    const-string v4, "SPEG"

    .line 222
    .line 223
    const-string/jumbo v9, "skip animation-leash of window_animation"

    .line 224
    .line 225
    .line 226
    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_b
    const/4 v4, 0x5

    .line 231
    if-ne v1, v4, :cond_f

    .line 232
    .line 233
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 234
    .line 235
    if-eqz v4, :cond_f

    .line 236
    .line 237
    iget-boolean v9, v4, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 238
    .line 239
    if-nez v9, :cond_c

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isStartingWindowDisplayed()Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_f

    .line 246
    .line 247
    :cond_c
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-nez v4, :cond_9

    .line 252
    .line 253
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mSkipExitAnimation:Z

    .line 254
    .line 255
    if-eqz v4, :cond_d

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_d
    aget-boolean v4, v7, v8

    .line 259
    .line 260
    if-eqz v4, :cond_e

    .line 261
    .line 262
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 263
    .line 264
    const/4 v15, 0x0

    .line 265
    const/16 v16, 0x0

    .line 266
    .line 267
    const-wide v12, -0x57024d80d683c60dL

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    const/4 v14, 0x0

    .line 273
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :cond_e
    const v4, 0x10a0013

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_f
    move v4, v6

    .line 281
    :goto_4
    const-wide/16 v11, 0x20

    .line 282
    .line 283
    if-eqz v4, :cond_11

    .line 284
    .line 285
    if-eq v4, v10, :cond_10

    .line 286
    .line 287
    const-string v13, "WSA#loadAnimation"

    .line 288
    .line 289
    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 293
    .line 294
    invoke-static {v13, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 299
    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_10
    const/4 v13, 0x0

    .line 303
    goto :goto_6

    .line 304
    :cond_11
    if-eq v1, v5, :cond_15

    .line 305
    .line 306
    if-eq v1, v8, :cond_14

    .line 307
    .line 308
    const/4 v13, 0x3

    .line 309
    if-eq v1, v13, :cond_13

    .line 310
    .line 311
    const/4 v14, 0x4

    .line 312
    if-eq v1, v14, :cond_12

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_12
    move v10, v13

    .line 316
    goto :goto_5

    .line 317
    :cond_13
    move v10, v8

    .line 318
    goto :goto_5

    .line 319
    :cond_14
    move v10, v5

    .line 320
    goto :goto_5

    .line 321
    :cond_15
    move v10, v6

    .line 322
    :goto_5
    if-ltz v10, :cond_10

    .line 323
    .line 324
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 329
    .line 330
    iget-object v14, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 331
    .line 332
    iget-object v13, v13, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 333
    .line 334
    invoke-virtual {v13, v14, v10, v6}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    .line 335
    .line 336
    .line 337
    move-result-object v13

    .line 338
    :goto_6
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 339
    .line 340
    sget-object v15, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    .line 341
    .line 342
    invoke-static {v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 343
    .line 344
    .line 345
    move-result v15

    .line 346
    if-eqz v15, :cond_16

    .line 347
    .line 348
    aget-boolean v7, v7, v5

    .line 349
    .line 350
    if-eqz v7, :cond_16

    .line 351
    .line 352
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v15

    .line 356
    int-to-long v6, v4

    .line 357
    int-to-long v9, v10

    .line 358
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v18

    .line 362
    int-to-long v4, v1

    .line 363
    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 364
    .line 365
    int-to-long v11, v8

    .line 366
    const/16 v8, 0x14

    .line 367
    .line 368
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v22

    .line 376
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 377
    .line 378
    .line 379
    move-result-object v16

    .line 380
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 381
    .line 382
    .line 383
    move-result-object v17

    .line 384
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 385
    .line 386
    .line 387
    move-result-object v19

    .line 388
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 389
    .line 390
    .line 391
    move-result-object v20

    .line 392
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 393
    .line 394
    .line 395
    move-result-object v21

    .line 396
    filled-new-array/range {v15 .. v22}, [Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v19

    .line 400
    const/16 v17, 0x3514

    .line 401
    .line 402
    const/16 v18, 0x0

    .line 403
    .line 404
    const-wide v15, -0x4eab9a1deef8cebdL    # -4.617939188492293E-71

    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :cond_16
    if-eqz v13, :cond_1d

    .line 413
    .line 414
    const-string v4, "WSA#startAnimation"

    .line 415
    .line 416
    const-wide/16 v5, 0x20

    .line 417
    .line 418
    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 419
    .line 420
    .line 421
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 422
    .line 423
    if-eqz v4, :cond_1b

    .line 424
    .line 425
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    if-eqz v4, :cond_1b

    .line 430
    .line 431
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    if-eqz v4, :cond_1a

    .line 436
    .line 437
    const/4 v5, 0x1

    .line 438
    if-eq v1, v5, :cond_17

    .line 439
    .line 440
    const/4 v5, 0x2

    .line 441
    if-eq v1, v5, :cond_18

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_17
    const/4 v5, 0x2

    .line 445
    :cond_18
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    if-eqz v6, :cond_1a

    .line 450
    .line 451
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 452
    .line 453
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    if-eqz v6, :cond_1a

    .line 458
    .line 459
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 460
    .line 461
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 462
    .line 463
    if-ne v6, v5, :cond_1a

    .line 464
    .line 465
    invoke-static {v13}, Lcom/android/server/wm/WindowAnimationSpec;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    if-eqz v5, :cond_1a

    .line 470
    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    const-string v6, "loadWindowAnimationIfNeeded: "

    .line 474
    .line 475
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v6, ", transit="

    .line 482
    .line 483
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    const-string v6, "FreeformController"

    .line 494
    .line 495
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 499
    .line 500
    iget-object v4, v4, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 501
    .line 502
    const/4 v5, 0x1

    .line 503
    if-ne v1, v5, :cond_19

    .line 504
    .line 505
    const v1, 0x10a003b

    .line 506
    .line 507
    .line 508
    goto :goto_7

    .line 509
    :cond_19
    const v1, 0x10a003a

    .line 510
    .line 511
    .line 512
    :goto_7
    invoke-virtual {v4, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    goto :goto_9

    .line 517
    :cond_1a
    :goto_8
    const/4 v9, 0x0

    .line 518
    :goto_9
    if-eqz v9, :cond_1b

    .line 519
    .line 520
    move-object v13, v9

    .line 521
    :cond_1b
    invoke-virtual {v3, v13}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 522
    .line 523
    .line 524
    const-wide/16 v4, 0x20

    .line 525
    .line 526
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 527
    .line 528
    .line 529
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 530
    .line 531
    goto :goto_a

    .line 532
    :cond_1c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 533
    .line 534
    .line 535
    :cond_1d
    :goto_a
    const/16 v0, 0x10

    .line 536
    .line 537
    const/4 v1, 0x0

    .line 538
    invoke-virtual {v3, v1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    return v0

    .line 543
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final applyEnterAnimationLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x3

    .line 12
    :goto_0
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 15
    .line 16
    if-eq v2, v1, :cond_2

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 46
    .line 47
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public final commitFinishDrawingLocked()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eq v0, v3, :cond_0

    .line 7
    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 12
    .line 13
    aget-boolean v0, v0, v3

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const-wide v4, -0x307249a35002c596L    # -1.6799098100033753E75

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 54
    .line 55
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    .line 57
    if-ne v0, v2, :cond_3

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    :cond_3
    return v1
.end method

.method public final createSurfaceLocked()Lcom/android/server/wm/WindowSurfaceController;
    .locals 31

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 4
    .line 5
    const-string v8, "WindowManager"

    .line 6
    .line 7
    iget-object v1, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    iput-boolean v10, v9, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 16
    .line 17
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 18
    .line 19
    const/4 v11, 0x2

    .line 20
    aget-boolean v1, v1, v11

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 29
    .line 30
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v17

    .line 34
    const-wide v13, -0x547dcbf2e9edc413L    # -4.161234117687017E-99

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const/4 v15, 0x0

    .line 40
    const/16 v16, 0x0

    .line 41
    .line 42
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v12, 0x1

    .line 46
    iput v12, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 47
    .line 48
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 60
    .line 61
    iput-boolean v10, v1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 62
    .line 63
    iput-boolean v10, v1, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    .line 64
    .line 65
    :cond_3
    :goto_0
    iget-object v13, v7, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    .line 67
    invoke-virtual {v13, v9}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 68
    .line 69
    .line 70
    iget-object v14, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    invoke-static {}, Lcom/android/window/flags/Flags;->secureWindowState()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    const/16 v1, 0x84

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 v1, 0x4

    .line 88
    :goto_1
    :try_start_0
    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    .line 89
    .line 90
    if-nez v2, :cond_5

    .line 91
    .line 92
    const-class v2, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    .line 99
    .line 100
    iput-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    .line 101
    .line 102
    :cond_5
    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    .line 103
    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 109
    .line 110
    const/16 v4, 0x7d0

    .line 111
    .line 112
    if-eq v3, v4, :cond_6

    .line 113
    .line 114
    const/16 v4, 0x7de

    .line 115
    .line 116
    if-eq v3, v4, :cond_6

    .line 117
    .line 118
    const/16 v4, 0x7e1

    .line 119
    .line 120
    if-eq v3, v4, :cond_6

    .line 121
    .line 122
    const/16 v4, 0x7e8

    .line 123
    .line 124
    if-eq v3, v4, :cond_6

    .line 125
    .line 126
    const/16 v4, 0x82f

    .line 127
    .line 128
    if-eq v3, v4, :cond_6

    .line 129
    .line 130
    const/16 v4, 0x8b2

    .line 131
    .line 132
    if-eq v3, v4, :cond_6

    .line 133
    .line 134
    const/16 v4, 0xa3d

    .line 135
    .line 136
    if-eq v3, v4, :cond_6

    .line 137
    .line 138
    const/16 v4, 0x7e3

    .line 139
    .line 140
    if-eq v3, v4, :cond_6

    .line 141
    .line 142
    const/16 v4, 0x7e4

    .line 143
    .line 144
    if-eq v3, v4, :cond_6

    .line 145
    .line 146
    packed-switch v3, :pswitch_data_0

    .line 147
    .line 148
    .line 149
    iget v3, v9, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 150
    .line 151
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;->isRemoteControlDisabled(I)Z

    .line 156
    .line 157
    .line 158
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    if-eqz v2, :cond_6

    .line 160
    .line 161
    const/high16 v2, 0xf00000

    .line 162
    .line 163
    or-int/2addr v1, v2

    .line 164
    goto :goto_2

    .line 165
    :catch_0
    const-string v2, "Exception occurred while checking for isRemoteControlDisabled"

    .line 166
    .line 167
    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_6
    :goto_2
    :pswitch_0
    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 171
    .line 172
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 173
    .line 174
    const/high16 v3, 0x100000

    .line 175
    .line 176
    and-int/2addr v2, v3

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    or-int/lit8 v1, v1, 0x40

    .line 180
    .line 181
    :cond_7
    move v15, v1

    .line 182
    const/16 v16, 0x0

    .line 183
    .line 184
    :try_start_1
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 185
    .line 186
    const/high16 v17, 0x1000000

    .line 187
    .line 188
    and-int v1, v1, v17

    .line 189
    .line 190
    if-eqz v1, :cond_8

    .line 191
    .line 192
    const/4 v1, -0x3

    .line 193
    :goto_3
    move v3, v1

    .line 194
    goto :goto_4

    .line 195
    :cond_8
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :goto_4
    new-instance v6, Lcom/android/server/wm/WindowSurfaceController;

    .line 199
    .line 200
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iget v5, v14, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    .line 210
    move-object v1, v6

    .line 211
    move v4, v15

    .line 212
    move/from16 v18, v5

    .line 213
    .line 214
    move-object/from16 v5, p0

    .line 215
    .line 216
    move-object v10, v6

    .line 217
    move/from16 v6, v18

    .line 218
    .line 219
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Ljava/lang/String;IILcom/android/server/wm/WindowStateAnimator;I)V

    .line 220
    .line 221
    .line 222
    iput-object v10, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 223
    .line 224
    invoke-static {}, Lcom/android/window/flags/Flags;->setScPropertiesInClient()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_a

    .line 229
    .line 230
    iget-object v1, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 231
    .line 232
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    iget v3, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 237
    .line 238
    and-int v3, v3, v17

    .line 239
    .line 240
    if-eqz v3, :cond_9

    .line 241
    .line 242
    move v3, v12

    .line 243
    goto :goto_5

    .line 244
    :cond_9
    const/4 v3, 0x0

    .line 245
    :goto_5
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :catch_1
    move-exception v0

    .line 250
    goto/16 :goto_9

    .line 251
    .line 252
    :catch_2
    const/4 v1, 0x0

    .line 253
    goto/16 :goto_a

    .line 254
    .line 255
    :cond_a
    :goto_6
    iget-object v1, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 256
    .line 257
    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 258
    .line 259
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 264
    .line 265
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceType:I

    .line 266
    .line 267
    const/16 v4, 0x1e

    .line 268
    .line 269
    invoke-virtual {v2, v1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 270
    .line 271
    .line 272
    iget v3, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 273
    .line 274
    const/16 v4, 0xa29

    .line 275
    .line 276
    if-ne v3, v4, :cond_b

    .line 277
    .line 278
    move v3, v12

    .line 279
    goto :goto_7

    .line 280
    :cond_b
    const/4 v3, 0x0

    .line 281
    :goto_7
    const/16 v4, 0x1f

    .line 282
    .line 283
    invoke-virtual {v2, v1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 284
    .line 285
    .line 286
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 287
    .line 288
    const/high16 v2, -0x80000000

    .line 289
    .line 290
    and-int/2addr v1, v2

    .line 291
    if-eqz v1, :cond_c

    .line 292
    .line 293
    move v1, v12

    .line 294
    goto :goto_8

    .line 295
    :cond_c
    const/4 v1, 0x0

    .line 296
    :goto_8
    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 297
    .line 298
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowSurfaceController;->setInternalPresentationOnly(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 303
    .line 304
    .line 305
    iput-boolean v12, v9, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 306
    .line 307
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 308
    .line 309
    iput-boolean v12, v1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 310
    .line 311
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 312
    .line 313
    aget-boolean v1, v1, v11

    .line 314
    .line 315
    if-eqz v1, :cond_d

    .line 316
    .line 317
    iget-object v1, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 318
    .line 319
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v19

    .line 323
    iget-object v1, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 324
    .line 325
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v20

    .line 329
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 330
    .line 331
    int-to-long v0, v0

    .line 332
    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 333
    .line 334
    int-to-long v2, v2

    .line 335
    int-to-long v4, v15

    .line 336
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v24

    .line 340
    sget-object v25, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 341
    .line 342
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 343
    .line 344
    .line 345
    move-result-object v21

    .line 346
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 347
    .line 348
    .line 349
    move-result-object v22

    .line 350
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 351
    .line 352
    .line 353
    move-result-object v23

    .line 354
    filled-new-array/range {v19 .. v24}, [Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v30

    .line 358
    const/16 v28, 0x150

    .line 359
    .line 360
    const/16 v29, 0x0

    .line 361
    .line 362
    const-wide v26, 0x20a7fb68da9e34d3L

    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    invoke-static/range {v25 .. v30}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 368
    .line 369
    .line 370
    :cond_d
    iput-boolean v12, v7, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 371
    .line 372
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 373
    .line 374
    return-object v0

    .line 375
    :catch_3
    move v1, v10

    .line 376
    goto :goto_a

    .line 377
    :goto_9
    const-string v1, "Exception creating surface (parent dead?)"

    .line 378
    .line 379
    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .line 381
    .line 382
    const/4 v1, 0x0

    .line 383
    iput v1, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 384
    .line 385
    return-object v16

    .line 386
    :goto_a
    const-string v0, "OutOfResourcesException creating surface"

    .line 387
    .line 388
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 392
    .line 393
    const-string v2, "create"

    .line 394
    .line 395
    invoke-virtual {v0, v7, v2, v12}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 396
    .line 397
    .line 398
    iput v1, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 399
    .line 400
    return-object v16

    .line 401
    :pswitch_data_0
    .packed-switch 0x961
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final destroySurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    const-string v1, "Exception thrown when destroying surface "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowSurfaceController;->destroy(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_3

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 20
    .line 21
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 22
    .line 23
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :goto_1
    :try_start_1
    const-string v4, "WindowManager"

    .line 27
    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " surface "

    .line 37
    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 42
    .line 43
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " session "

    .line 47
    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 52
    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ": "

    .line 57
    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_2
    return-void

    .line 73
    :goto_3
    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 74
    .line 75
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 76
    .line 77
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 78
    .line 79
    throw p1
.end method

.method public final destroySurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 10
    .line 11
    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    aget-boolean v1, v1, v2

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 36
    .line 37
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const-wide v4, -0x3e56477d6157c702L    # -2.1576123132855982E8

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 58
    .line 59
    .line 60
    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "Exception thrown when destroying Window "

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, " surface "

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, " session "

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, ": "

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v1, "WindowManager"

    .line 126
    .line 127
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 131
    iput-boolean p1, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 138
    .line 139
    .line 140
    :cond_4
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 142
    .line 143
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 144
    .line 145
    return-void
.end method

.method public final drawStateToString()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "HAS_DRAWN"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    const-string p0, "READY_TO_SHOW"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    const-string p0, "COMMIT_DRAW_PENDING"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    const-string p0, "DRAW_PENDING"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    const-string p0, "NO_SURFACE"

    .line 35
    .line 36
    return-object p0
.end method

.method public final getShown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final hasSurface()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    aget-boolean v0, v0, v1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 26
    .line 27
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const-wide v2, -0x1c86464fa157c68bL    # -1.5533839135969597E171

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-boolean p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 46
    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 60
    .line 61
    iget-boolean v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    filled-new-array {v0, p2, p1}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const p2, 0x80e9

    .line 94
    .line 95
    .line 96
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p2, "Exception hiding surface in "

    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p1, "WindowManager"

    .line 115
    .line 116
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_0
    return-void
.end method

.method public final prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    aget-boolean v0, v3, v5

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 38
    .line 39
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    const-wide v8, 0x7763d23fd6a23e6aL    # 1.278256507471252E267

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :cond_2
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 64
    .line 65
    iget-boolean v2, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-boolean v2, v6, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 71
    .line 72
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eq v2, v7, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 80
    .line 81
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 82
    .line 83
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    .line 84
    .line 85
    const/high16 v7, -0x40800000    # -1.0f

    .line 86
    .line 87
    cmpl-float v7, v2, v7

    .line 88
    .line 89
    if-eqz v7, :cond_5

    .line 90
    .line 91
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 92
    .line 93
    :cond_5
    :goto_0
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_8

    .line 98
    .line 99
    const-string/jumbo v2, "prepareSurfaceLocked"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v1, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_7

    .line 114
    .line 115
    :cond_6
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 116
    .line 117
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_f

    .line 125
    .line 126
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_f

    .line 131
    .line 132
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 133
    .line 134
    .line 135
    aget-boolean v1, v3, v5

    .line 136
    .line 137
    if-eqz v1, :cond_f

    .line 138
    .line 139
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 144
    .line 145
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    const-wide v8, 0x7763d23fd6a23e6aL    # 1.278256507471252E267

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    const/4 v10, 0x0

    .line 155
    const/4 v11, 0x0

    .line 156
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_2

    .line 160
    .line 161
    :cond_8
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 162
    .line 163
    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 164
    .line 165
    cmpl-float v2, v2, v7

    .line 166
    .line 167
    if-nez v2, :cond_9

    .line 168
    .line 169
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 170
    .line 171
    if-eqz v2, :cond_f

    .line 172
    .line 173
    :cond_9
    iput v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 174
    .line 175
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 176
    .line 177
    const/4 v7, 0x2

    .line 178
    aget-boolean v8, v2, v7

    .line 179
    .line 180
    if-eqz v8, :cond_a

    .line 181
    .line 182
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 183
    .line 184
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    iget v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 189
    .line 190
    float-to-double v9, v9

    .line 191
    iget v11, v6, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 192
    .line 193
    float-to-double v11, v11

    .line 194
    iget v13, v6, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 195
    .line 196
    float-to-double v13, v13

    .line 197
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 202
    .line 203
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    filled-new-array {v8, v9, v10, v11, v15}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v21

    .line 219
    const/16 v19, 0xa8

    .line 220
    .line 221
    const/16 v20, 0x0

    .line 222
    .line 223
    const-wide v17, -0x467ec3e16774cb86L    # -1.0621791365512905E-31

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_a
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 232
    .line 233
    iget v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 234
    .line 235
    iget-object v8, v8, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 236
    .line 237
    if-nez v8, :cond_b

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_b
    invoke-virtual {v1, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 241
    .line 242
    .line 243
    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 244
    .line 245
    const/4 v9, 0x4

    .line 246
    if-ne v8, v9, :cond_f

    .line 247
    .line 248
    iget-boolean v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 249
    .line 250
    if-eqz v8, :cond_f

    .line 251
    .line 252
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 253
    .line 254
    aget-boolean v2, v2, v7

    .line 255
    .line 256
    if-eqz v2, :cond_c

    .line 257
    .line 258
    iget-object v2, v8, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 265
    .line 266
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    const/4 v12, 0x0

    .line 271
    const/4 v13, 0x0

    .line 272
    const-wide v10, -0x748f07a773b6c016L

    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_c
    iget-boolean v2, v8, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 281
    .line 282
    if-eqz v2, :cond_d

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_d
    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 286
    .line 287
    .line 288
    iget-object v2, v8, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 289
    .line 290
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 291
    .line 292
    .line 293
    iget-object v1, v8, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 294
    .line 295
    iget-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 296
    .line 297
    if-eqz v2, :cond_e

    .line 298
    .line 299
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 300
    .line 301
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 306
    .line 307
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 316
    .line 317
    iget-object v1, v1, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 318
    .line 319
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    filled-new-array {v2, v7, v1}, [Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    const v2, 0x80e9

    .line 328
    .line 329
    .line 330
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 331
    .line 332
    .line 333
    :cond_e
    :goto_1
    iput-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 334
    .line 335
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 340
    .line 341
    if-nez v2, :cond_f

    .line 342
    .line 343
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 344
    .line 345
    or-int/lit8 v2, v2, 0x8

    .line 346
    .line 347
    iput v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 348
    .line 349
    :cond_f
    :goto_2
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_12

    .line 354
    .line 355
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-nez v1, :cond_11

    .line 360
    .line 361
    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 362
    .line 363
    invoke-virtual {v1, v6}, Lcom/android/server/wm/DisplayContent;->shouldSyncRotationChange(Lcom/android/server/wm/WindowState;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_10

    .line 368
    .line 369
    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 370
    .line 371
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 372
    .line 373
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 374
    .line 375
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 376
    .line 377
    iput-object v6, v0, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Lcom/android/server/wm/WindowState;

    .line 378
    .line 379
    :cond_10
    aget-boolean v0, v3, v5

    .line 380
    .line 381
    if-eqz v0, :cond_12

    .line 382
    .line 383
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 388
    .line 389
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    const-wide v2, -0x2733f9ae349ec100L    # -5.653651635428092E119

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    const/4 v4, 0x0

    .line 399
    const/4 v5, 0x0

    .line 400
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_11
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 405
    .line 406
    .line 407
    aget-boolean v0, v3, v5

    .line 408
    .line 409
    if-eqz v0, :cond_12

    .line 410
    .line 411
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 416
    .line 417
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    const-wide v2, 0x677d3b68d8d53da0L    # 3.2560931900499293E190

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    const/4 v4, 0x0

    .line 427
    const/4 v5, 0x0

    .line 428
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    :cond_12
    :goto_3
    return-void
.end method

.method public final setColorSpaceAgnosticLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setInternalPresentationOnly(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setInternalPresentationOnly(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setOpaqueLocked(Z)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    aget-boolean v0, v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/4 v4, 0x3

    .line 30
    const/4 v5, 0x0

    .line 31
    const-wide v2, 0x6c6fbd53d96c3d43L    # 2.137016354292024E214

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "WindowStateAnimator{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x20

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x7d

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
