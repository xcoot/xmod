.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda37(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 37
    .line 38
    iput-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 39
    .line 40
    :cond_3
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 42
    .line 43
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 52
    .line 53
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 54
    .line 55
    .line 56
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 57
    .line 58
    iput p0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 59
    .line 60
    :cond_4
    :goto_0
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda40(Ljava/lang/Object;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    move-object/from16 v7, p1

    .line 6
    .line 7
    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 14
    .line 15
    iget-boolean v2, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 39
    .line 40
    aget-boolean v2, v2, v8

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 49
    .line 50
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v14

    .line 54
    const/4 v13, 0x0

    .line 55
    const-wide v10, -0x7848fa1e0b63cdfbL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 65
    .line 66
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 67
    .line 68
    or-int/lit8 v2, v2, 0x4

    .line 69
    .line 70
    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 71
    .line 72
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 73
    .line 74
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 75
    .line 76
    iput-boolean v2, v7, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v11, 0x3

    .line 80
    if-nez v2, :cond_32

    .line 81
    .line 82
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, -0x1

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    move v4, v8

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    move v4, v9

    .line 113
    :goto_0
    if-nez v4, :cond_4

    .line 114
    .line 115
    iget-object v5, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 116
    .line 117
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 118
    .line 119
    if-eq v5, v3, :cond_5

    .line 120
    .line 121
    :cond_4
    if-eqz v4, :cond_6

    .line 122
    .line 123
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_6

    .line 136
    .line 137
    invoke-virtual {v7, v11}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_6

    .line 142
    .line 143
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iget-object v5, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 148
    .line 149
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 150
    .line 151
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 152
    .line 153
    if-gtz v6, :cond_6

    .line 154
    .line 155
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 156
    .line 157
    if-gtz v6, :cond_6

    .line 158
    .line 159
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 160
    .line 161
    iget v13, v4, Landroid/view/DisplayInfo;->appWidth:I

    .line 162
    .line 163
    if-lt v6, v13, :cond_6

    .line 164
    .line 165
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 166
    .line 167
    iget v4, v4, Landroid/view/DisplayInfo;->appHeight:I

    .line 168
    .line 169
    if-lt v5, v4, :cond_6

    .line 170
    .line 171
    iput-object v7, v0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 172
    .line 173
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 174
    .line 175
    iput-boolean v8, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 176
    .line 177
    :cond_6
    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 178
    .line 179
    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 180
    .line 181
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    sget-object v13, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    .line 191
    .line 192
    aget-boolean v14, v13, v9

    .line 193
    .line 194
    if-eqz v14, :cond_7

    .line 195
    .line 196
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v14

    .line 200
    iget-boolean v15, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 201
    .line 202
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    .line 203
    .line 204
    .line 205
    move-result v16

    .line 206
    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 207
    .line 208
    iget-wide v10, v11, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 209
    .line 210
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 211
    .line 212
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 213
    .line 214
    .line 215
    move-result-object v15

    .line 216
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    filled-new-array {v14, v15, v3, v8, v10}, [Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v22

    .line 232
    const/16 v20, 0x1fc

    .line 233
    .line 234
    const/16 v21, 0x0

    .line 235
    .line 236
    const-wide v18, -0x6ad75c6e4209c9faL    # -9.593013447397445E-207

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :cond_7
    if-nez v6, :cond_9

    .line 245
    .line 246
    :cond_8
    move v1, v9

    .line 247
    :goto_2
    move-object v3, v13

    .line 248
    goto/16 :goto_b

    .line 249
    .line 250
    :cond_9
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 251
    .line 252
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 253
    .line 254
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 255
    .line 256
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-interface {v3, v6}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldNotTopDisplay(I)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_b

    .line 265
    .line 266
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_a

    .line 271
    .line 272
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 273
    .line 274
    if-eqz v1, :cond_8

    .line 275
    .line 276
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 277
    .line 278
    if-eqz v3, :cond_8

    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_8

    .line 285
    .line 286
    :cond_a
    const/4 v1, 0x1

    .line 287
    goto :goto_2

    .line 288
    :cond_b
    const-wide/16 v10, 0x0

    .line 289
    .line 290
    if-nez v4, :cond_c

    .line 291
    .line 292
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 293
    .line 294
    iget-wide v14, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 295
    .line 296
    cmp-long v3, v14, v10

    .line 297
    .line 298
    if-ltz v3, :cond_c

    .line 299
    .line 300
    move-object v3, v13

    .line 301
    iget-wide v12, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 302
    .line 303
    cmp-long v6, v12, v10

    .line 304
    .line 305
    if-gez v6, :cond_d

    .line 306
    .line 307
    iput-wide v14, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 308
    .line 309
    aget-boolean v6, v3, v9

    .line 310
    .line 311
    if-eqz v6, :cond_d

    .line 312
    .line 313
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 314
    .line 315
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v21

    .line 323
    const/16 v19, 0x1

    .line 324
    .line 325
    const/16 v20, 0x0

    .line 326
    .line 327
    const-wide v17, 0x77a4fb15be5c3accL    # 2.1648519881517276E268

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_c
    move-object v3, v13

    .line 337
    :cond_d
    :goto_3
    if-nez v4, :cond_e

    .line 338
    .line 339
    iget-object v6, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 340
    .line 341
    iget-wide v12, v6, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 342
    .line 343
    cmp-long v6, v12, v10

    .line 344
    .line 345
    if-ltz v6, :cond_e

    .line 346
    .line 347
    iget-wide v14, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    .line 348
    .line 349
    cmp-long v6, v14, v10

    .line 350
    .line 351
    if-gez v6, :cond_e

    .line 352
    .line 353
    iput-wide v12, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    .line 354
    .line 355
    :cond_e
    iget-object v6, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 356
    .line 357
    if-nez v4, :cond_f

    .line 358
    .line 359
    iget-wide v10, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 360
    .line 361
    const-wide/16 v12, 0x146a

    .line 362
    .line 363
    cmp-long v10, v10, v12

    .line 364
    .line 365
    if-nez v10, :cond_f

    .line 366
    .line 367
    const-wide/16 v10, -0x1

    .line 368
    .line 369
    iput-wide v10, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 370
    .line 371
    iput-wide v10, v6, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 372
    .line 373
    :cond_f
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    if-nez v6, :cond_11

    .line 378
    .line 379
    iget-object v6, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 380
    .line 381
    if-eqz v6, :cond_10

    .line 382
    .line 383
    iget-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 384
    .line 385
    if-eqz v10, :cond_10

    .line 386
    .line 387
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    if-eqz v6, :cond_10

    .line 392
    .line 393
    goto :goto_4

    .line 394
    :cond_10
    move v1, v9

    .line 395
    goto/16 :goto_b

    .line 396
    .line 397
    :cond_11
    :goto_4
    if-nez v4, :cond_13

    .line 398
    .line 399
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 400
    .line 401
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    cmpl-float v4, v4, v6

    .line 405
    .line 406
    if-ltz v4, :cond_13

    .line 407
    .line 408
    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 409
    .line 410
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-eqz v4, :cond_13

    .line 415
    .line 416
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 417
    .line 418
    if-eqz v4, :cond_12

    .line 419
    .line 420
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    if-eqz v4, :cond_12

    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_12
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 428
    .line 429
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 430
    .line 431
    iput v6, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 432
    .line 433
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 434
    .line 435
    iput-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverridePackage:Ljava/lang/String;

    .line 436
    .line 437
    :cond_13
    :goto_5
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    if-eqz v4, :cond_16

    .line 442
    .line 443
    iget-boolean v6, v4, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 444
    .line 445
    if-eqz v6, :cond_16

    .line 446
    .line 447
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 448
    .line 449
    if-eqz v4, :cond_14

    .line 450
    .line 451
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    const/4 v5, 0x5

    .line 456
    if-ne v4, v5, :cond_14

    .line 457
    .line 458
    :goto_6
    const/4 v4, 0x1

    .line 459
    goto :goto_7

    .line 460
    :cond_14
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 461
    .line 462
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 463
    .line 464
    check-cast v4, Lcom/android/server/policy/PhoneWindowManager;

    .line 465
    .line 466
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-eqz v4, :cond_15

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :goto_7
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 474
    .line 475
    :cond_15
    :goto_8
    const/4 v4, 0x1

    .line 476
    goto :goto_a

    .line 477
    :cond_16
    if-eqz v4, :cond_18

    .line 478
    .line 479
    iget-boolean v6, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 480
    .line 481
    if-eqz v6, :cond_15

    .line 482
    .line 483
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 484
    .line 485
    iget v4, v4, Landroid/view/DisplayInfo;->flags:I

    .line 486
    .line 487
    and-int/lit16 v4, v4, 0x200

    .line 488
    .line 489
    if-eqz v4, :cond_17

    .line 490
    .line 491
    goto :goto_9

    .line 492
    :cond_17
    if-eqz v5, :cond_18

    .line 493
    .line 494
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 495
    .line 496
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 497
    .line 498
    const/16 v5, 0x7d9

    .line 499
    .line 500
    if-ne v4, v5, :cond_18

    .line 501
    .line 502
    :goto_9
    goto :goto_8

    .line 503
    :cond_18
    move v4, v9

    .line 504
    :goto_a
    iget-object v5, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 505
    .line 506
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 507
    .line 508
    const/high16 v6, 0x10000

    .line 509
    .line 510
    and-int/2addr v5, v6

    .line 511
    if-eqz v5, :cond_19

    .line 512
    .line 513
    const/4 v5, 0x1

    .line 514
    iput-boolean v5, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 515
    .line 516
    :cond_19
    move v1, v4

    .line 517
    :goto_b
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 518
    .line 519
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 520
    .line 521
    if-nez v4, :cond_1b

    .line 522
    .line 523
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 524
    .line 525
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 526
    .line 527
    if-eqz v4, :cond_1a

    .line 528
    .line 529
    iget-object v5, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 530
    .line 531
    invoke-virtual {v4}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    if-ne v5, v4, :cond_1a

    .line 536
    .line 537
    goto :goto_c

    .line 538
    :cond_1a
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 539
    .line 540
    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 541
    .line 542
    or-int/2addr v1, v5

    .line 543
    iput-boolean v1, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 544
    .line 545
    :cond_1b
    :goto_c
    iget-boolean v1, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 546
    .line 547
    if-eqz v1, :cond_32

    .line 548
    .line 549
    if-eqz v2, :cond_32

    .line 550
    .line 551
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 552
    .line 553
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 554
    .line 555
    and-int/lit16 v1, v1, 0x80

    .line 556
    .line 557
    if-eqz v1, :cond_1c

    .line 558
    .line 559
    iput-object v7, v0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 560
    .line 561
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 562
    .line 563
    if-eqz v1, :cond_1d

    .line 564
    .line 565
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 566
    .line 567
    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    .line 568
    .line 569
    const v2, 0x8000

    .line 570
    .line 571
    .line 572
    and-int/2addr v1, v2

    .line 573
    if-eqz v1, :cond_1d

    .line 574
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    const-string v2, "Ignore FLAG_KEEP_SCREEN_ON for "

    .line 578
    .line 579
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 583
    .line 584
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 585
    .line 586
    const-string v3, "SPEG"

    .line 587
    .line 588
    invoke-static {v1, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    const/4 v1, 0x0

    .line 592
    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 593
    .line 594
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 595
    .line 596
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 597
    .line 598
    and-int/lit16 v2, v2, -0x81

    .line 599
    .line 600
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 601
    .line 602
    goto :goto_d

    .line 603
    :cond_1c
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 604
    .line 605
    if-ne v7, v1, :cond_1d

    .line 606
    .line 607
    aget-boolean v1, v3, v9

    .line 608
    .line 609
    if-eqz v1, :cond_1d

    .line 610
    .line 611
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    const/16 v2, 0xa

    .line 616
    .line 617
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 626
    .line 627
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v15

    .line 631
    const/4 v14, 0x0

    .line 632
    const-wide v11, 0x57353cd059d832daL    # 1.2768588890467934E112

    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    const/4 v13, 0x0

    .line 638
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    :cond_1d
    :goto_d
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 642
    .line 643
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 644
    .line 645
    const/16 v2, 0x7d8

    .line 646
    .line 647
    if-eq v1, v2, :cond_1e

    .line 648
    .line 649
    const/16 v2, 0x7da

    .line 650
    .line 651
    if-eq v1, v2, :cond_1e

    .line 652
    .line 653
    const/16 v2, 0x7f8

    .line 654
    .line 655
    if-ne v1, v2, :cond_1f

    .line 656
    .line 657
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 658
    .line 659
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 660
    .line 661
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 662
    .line 663
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-eqz v1, :cond_1f

    .line 668
    .line 669
    :cond_1e
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 670
    .line 671
    const/4 v2, 0x1

    .line 672
    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 673
    .line 674
    :cond_1f
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 675
    .line 676
    iget v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 677
    .line 678
    const/4 v3, 0x0

    .line 679
    cmpl-float v2, v2, v3

    .line 680
    .line 681
    if-nez v2, :cond_20

    .line 682
    .line 683
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 684
    .line 685
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 686
    .line 687
    cmpl-float v4, v2, v3

    .line 688
    .line 689
    if-eqz v4, :cond_20

    .line 690
    .line 691
    iput v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 692
    .line 693
    :cond_20
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 694
    .line 695
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 696
    .line 697
    iget-boolean v4, v3, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 698
    .line 699
    or-int/2addr v2, v4

    .line 700
    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 701
    .line 702
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    .line 703
    .line 704
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isHdrConversionEnabled()Z

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    const/4 v4, 0x1

    .line 709
    xor-int/2addr v3, v4

    .line 710
    or-int/2addr v2, v3

    .line 711
    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    .line 712
    .line 713
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 714
    .line 715
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 716
    .line 717
    invoke-virtual {v1, v7}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    const/4 v3, 0x2

    .line 726
    if-eq v2, v3, :cond_21

    .line 727
    .line 728
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 729
    .line 730
    iget v3, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 731
    .line 732
    if-nez v3, :cond_21

    .line 733
    .line 734
    if-eqz v1, :cond_21

    .line 735
    .line 736
    iput v1, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 737
    .line 738
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 739
    .line 740
    if-eqz v2, :cond_21

    .line 741
    .line 742
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 743
    .line 744
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 745
    .line 746
    const/high16 v3, -0x40800000    # -1.0f

    .line 747
    .line 748
    invoke-virtual {v2, v7, v1, v3, v9}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    .line 749
    .line 750
    .line 751
    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 752
    .line 753
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 754
    .line 755
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    if-eqz v2, :cond_23

    .line 763
    .line 764
    :cond_22
    const/4 v1, 0x0

    .line 765
    goto :goto_e

    .line 766
    :cond_23
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    .line 767
    .line 768
    if-eqz v2, :cond_24

    .line 769
    .line 770
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 771
    .line 772
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 773
    .line 774
    const/4 v3, 0x0

    .line 775
    cmpl-float v2, v2, v3

    .line 776
    .line 777
    if-nez v2, :cond_25

    .line 778
    .line 779
    invoke-virtual {v1, v7}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    .line 780
    .line 781
    .line 782
    move-result v8

    .line 783
    cmpl-float v2, v8, v3

    .line 784
    .line 785
    if-lez v2, :cond_25

    .line 786
    .line 787
    move v1, v8

    .line 788
    goto :goto_e

    .line 789
    :cond_24
    const/4 v3, 0x0

    .line 790
    :cond_25
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 791
    .line 792
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 793
    .line 794
    cmpl-float v5, v4, v3

    .line 795
    .line 796
    if-lez v5, :cond_26

    .line 797
    .line 798
    move v1, v4

    .line 799
    goto :goto_e

    .line 800
    :cond_26
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 801
    .line 802
    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 803
    .line 804
    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    .line 805
    .line 806
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    check-cast v1, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 811
    .line 812
    if-eqz v1, :cond_22

    .line 813
    .line 814
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_IGNORE_RESTRICTED_RANGE:Z

    .line 815
    .line 816
    if-eqz v2, :cond_27

    .line 817
    .line 818
    invoke-static {v7}, Lcom/android/server/wm/RefreshRatePolicy;->shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    if-nez v2, :cond_22

    .line 823
    .line 824
    :cond_27
    iget v1, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 825
    .line 826
    :goto_e
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 827
    .line 828
    iget v3, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 829
    .line 830
    const/4 v4, 0x0

    .line 831
    cmpl-float v3, v3, v4

    .line 832
    .line 833
    if-nez v3, :cond_28

    .line 834
    .line 835
    cmpl-float v3, v1, v4

    .line 836
    .line 837
    if-eqz v3, :cond_28

    .line 838
    .line 839
    iput v1, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 840
    .line 841
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 842
    .line 843
    if-eqz v2, :cond_28

    .line 844
    .line 845
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 846
    .line 847
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 848
    .line 849
    const/4 v3, 0x1

    .line 850
    const/4 v4, -0x1

    .line 851
    invoke-virtual {v2, v7, v4, v1, v3}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    .line 852
    .line 853
    .line 854
    :cond_28
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 855
    .line 856
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 857
    .line 858
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    if-eqz v2, :cond_2a

    .line 866
    .line 867
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 868
    .line 869
    if-eqz v2, :cond_29

    .line 870
    .line 871
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-virtual {v2}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    .line 876
    .line 877
    .line 878
    move-result v2

    .line 879
    if-eqz v2, :cond_29

    .line 880
    .line 881
    const/4 v2, 0x1

    .line 882
    const/4 v3, 0x3

    .line 883
    invoke-virtual {v7, v3, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 884
    .line 885
    .line 886
    move-result v4

    .line 887
    if-nez v4, :cond_2a

    .line 888
    .line 889
    :cond_29
    :goto_f
    const/4 v6, 0x0

    .line 890
    goto/16 :goto_11

    .line 891
    .line 892
    :cond_2a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    .line 893
    .line 894
    if-eqz v2, :cond_2b

    .line 895
    .line 896
    invoke-virtual {v1, v7}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    .line 897
    .line 898
    .line 899
    move-result v2

    .line 900
    const/4 v3, 0x0

    .line 901
    cmpl-float v4, v2, v3

    .line 902
    .line 903
    if-lez v4, :cond_2c

    .line 904
    .line 905
    move v6, v2

    .line 906
    goto/16 :goto_11

    .line 907
    .line 908
    :cond_2b
    const/4 v3, 0x0

    .line 909
    :cond_2c
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 910
    .line 911
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 912
    .line 913
    cmpl-float v5, v4, v3

    .line 914
    .line 915
    if-lez v5, :cond_2d

    .line 916
    .line 917
    move v6, v4

    .line 918
    goto/16 :goto_11

    .line 919
    .line 920
    :cond_2d
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 921
    .line 922
    iget-object v3, v1, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 923
    .line 924
    iget-object v3, v3, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    .line 925
    .line 926
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object v3

    .line 930
    check-cast v3, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 931
    .line 932
    if-eqz v3, :cond_2f

    .line 933
    .line 934
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_IGNORE_RESTRICTED_RANGE:Z

    .line 935
    .line 936
    if-eqz v4, :cond_2e

    .line 937
    .line 938
    invoke-static {v7}, Lcom/android/server/wm/RefreshRatePolicy;->shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z

    .line 939
    .line 940
    .line 941
    move-result v4

    .line 942
    if-nez v4, :cond_2f

    .line 943
    .line 944
    :cond_2e
    iget v1, v3, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 945
    .line 946
    :goto_10
    move v6, v1

    .line 947
    goto :goto_11

    .line 948
    :cond_2f
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    .line 949
    .line 950
    iget-object v4, v1, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 951
    .line 952
    if-eqz v3, :cond_30

    .line 953
    .line 954
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 955
    .line 956
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 957
    .line 958
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 959
    .line 960
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    if-eqz v3, :cond_30

    .line 965
    .line 966
    const/4 v3, 0x1

    .line 967
    iput-boolean v3, v1, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    .line 968
    .line 969
    goto :goto_f

    .line 970
    :cond_30
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    .line 971
    .line 972
    if-eqz v3, :cond_31

    .line 973
    .line 974
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 975
    .line 976
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 977
    .line 978
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 979
    .line 980
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 981
    .line 982
    .line 983
    move-result v3

    .line 984
    if-eqz v3, :cond_31

    .line 985
    .line 986
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 987
    .line 988
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 989
    .line 990
    and-int/lit16 v3, v3, 0x80

    .line 991
    .line 992
    if-eqz v3, :cond_31

    .line 993
    .line 994
    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 995
    .line 996
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 997
    .line 998
    .line 999
    move-result v1

    .line 1000
    goto :goto_10

    .line 1001
    :cond_31
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    .line 1002
    .line 1003
    if-eqz v3, :cond_29

    .line 1004
    .line 1005
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 1006
    .line 1007
    .line 1008
    move-result v3

    .line 1009
    if-eqz v3, :cond_29

    .line 1010
    .line 1011
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1012
    .line 1013
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 1014
    .line 1015
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 1016
    .line 1017
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v2

    .line 1021
    if-eqz v2, :cond_29

    .line 1022
    .line 1023
    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 1024
    .line 1025
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 1026
    .line 1027
    .line 1028
    move-result v1

    .line 1029
    goto :goto_10

    .line 1030
    :goto_11
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 1031
    .line 1032
    iget v2, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    .line 1033
    .line 1034
    const/4 v3, 0x0

    .line 1035
    cmpl-float v2, v2, v3

    .line 1036
    .line 1037
    if-nez v2, :cond_32

    .line 1038
    .line 1039
    cmpl-float v2, v6, v3

    .line 1040
    .line 1041
    if-eqz v2, :cond_32

    .line 1042
    .line 1043
    iput v6, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    .line 1044
    .line 1045
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 1046
    .line 1047
    if-eqz v1, :cond_32

    .line 1048
    .line 1049
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1050
    .line 1051
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 1052
    .line 1053
    const/4 v2, 0x2

    .line 1054
    const/4 v3, -0x1

    .line 1055
    invoke-virtual {v1, v7, v3, v6, v2}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    .line 1056
    .line 1057
    .line 1058
    :cond_32
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v1

    .line 1062
    const-string v10, "WindowManager"

    .line 1063
    .line 1064
    if-nez v1, :cond_33

    .line 1065
    .line 1066
    goto/16 :goto_13

    .line 1067
    .line 1068
    :cond_33
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v1

    .line 1072
    if-eqz v1, :cond_34

    .line 1073
    .line 1074
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1075
    .line 1076
    iget-boolean v1, v1, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 1077
    .line 1078
    if-eqz v1, :cond_34

    .line 1079
    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    const-string v2, "Force report resize for pop-over w="

    .line 1083
    .line 1084
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v1

    .line 1094
    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1098
    .line 1099
    const/4 v2, 0x1

    .line 1100
    iput-boolean v2, v1, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 1101
    .line 1102
    :cond_34
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1103
    .line 1104
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1105
    .line 1106
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 1107
    .line 1108
    iget v12, v1, Landroid/graphics/Rect;->top:I

    .line 1109
    .line 1110
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->canPlayMoveAnimation()Z

    .line 1111
    .line 1112
    .line 1113
    move-result v1

    .line 1114
    if-eqz v1, :cond_37

    .line 1115
    .line 1116
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 1117
    .line 1118
    if-eqz v1, :cond_35

    .line 1119
    .line 1120
    goto :goto_12

    .line 1121
    :cond_35
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 1122
    .line 1123
    const/4 v2, 0x1

    .line 1124
    aget-boolean v1, v1, v2

    .line 1125
    .line 1126
    if-eqz v1, :cond_36

    .line 1127
    .line 1128
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v1

    .line 1132
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1133
    .line 1134
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v18

    .line 1138
    const/16 v16, 0x0

    .line 1139
    .line 1140
    const/16 v17, 0x0

    .line 1141
    .line 1142
    const-wide v14, 0x57501fc39eb53344L    # 3.877691942187174E112

    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    .line 1149
    .line 1150
    :cond_36
    new-instance v1, Landroid/graphics/Point;

    .line 1151
    .line 1152
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1153
    .line 1154
    .line 1155
    new-instance v2, Landroid/graphics/Point;

    .line 1156
    .line 1157
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1158
    .line 1159
    .line 1160
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1161
    .line 1162
    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 1163
    .line 1164
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 1165
    .line 1166
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 1167
    .line 1168
    invoke-virtual {v7, v4, v3, v1}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v7, v11, v12, v2}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 1172
    .line 1173
    .line 1174
    new-instance v13, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 1175
    .line 1176
    new-instance v14, Lcom/android/server/wm/WindowState$MoveAnimationSpec;

    .line 1177
    .line 1178
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 1179
    .line 1180
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 1181
    .line 1182
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 1183
    .line 1184
    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 1185
    .line 1186
    move-object v1, v14

    .line 1187
    move-object v2, v7

    .line 1188
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIII)V

    .line 1189
    .line 1190
    .line 1191
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1192
    .line 1193
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 1194
    .line 1195
    invoke-direct {v13, v14, v1}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1203
    .line 1204
    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1205
    .line 1206
    const/16 v3, 0x10

    .line 1207
    .line 1208
    invoke-virtual {v7, v1, v13, v2, v3}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 1209
    .line 1210
    .line 1211
    :cond_37
    :goto_12
    invoke-static {v7}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v1

    .line 1215
    if-eqz v1, :cond_38

    .line 1216
    .line 1217
    goto :goto_13

    .line 1218
    :cond_38
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1219
    .line 1220
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1221
    .line 1222
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 1223
    .line 1224
    .line 1225
    move-result v1

    .line 1226
    if-eqz v1, :cond_39

    .line 1227
    .line 1228
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1229
    .line 1230
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1231
    .line 1232
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 1233
    .line 1234
    .line 1235
    move-result v2

    .line 1236
    filled-new-array {v2}, [I

    .line 1237
    .line 1238
    .line 1239
    move-result-object v2

    .line 1240
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1241
    .line 1242
    .line 1243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 1244
    .line 1245
    .line 1246
    move-result v3

    .line 1247
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedWithCallingUid(I[I)V

    .line 1248
    .line 1249
    .line 1250
    :cond_39
    :try_start_0
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 1251
    .line 1252
    invoke-interface {v1, v11, v12}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    .line 1254
    .line 1255
    :catch_0
    iput-boolean v9, v7, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 1256
    .line 1257
    :goto_13
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1258
    .line 1259
    iput-boolean v9, v1, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 1260
    .line 1261
    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1262
    .line 1263
    if-eqz v1, :cond_42

    .line 1264
    .line 1265
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1266
    .line 1267
    .line 1268
    move-result v2

    .line 1269
    if-eqz v2, :cond_42

    .line 1270
    .line 1271
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 1272
    .line 1273
    .line 1274
    const/4 v2, 0x1

    .line 1275
    iput-boolean v2, v7, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    .line 1276
    .line 1277
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 1278
    .line 1279
    if-eqz v2, :cond_3a

    .line 1280
    .line 1281
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    .line 1282
    .line 1283
    if-nez v2, :cond_3a

    .line 1284
    .line 1285
    goto/16 :goto_16

    .line 1286
    .line 1287
    :cond_3a
    iget-wide v2, v1, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 1288
    .line 1289
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1290
    .line 1291
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 1292
    .line 1293
    int-to-long v4, v4

    .line 1294
    cmp-long v2, v2, v4

    .line 1295
    .line 1296
    if-eqz v2, :cond_3c

    .line 1297
    .line 1298
    iput-wide v4, v1, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 1299
    .line 1300
    iput v9, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 1301
    .line 1302
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v2

    .line 1306
    if-eqz v2, :cond_3b

    .line 1307
    .line 1308
    const/4 v2, 0x1

    .line 1309
    goto :goto_14

    .line 1310
    :cond_3b
    move v2, v9

    .line 1311
    :goto_14
    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 1312
    .line 1313
    :cond_3c
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1314
    .line 1315
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 1316
    .line 1317
    if-nez v3, :cond_42

    .line 1318
    .line 1319
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    .line 1320
    .line 1321
    .line 1322
    move-result v3

    .line 1323
    if-eqz v3, :cond_42

    .line 1324
    .line 1325
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1326
    .line 1327
    invoke-virtual {v3}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v4

    .line 1331
    const-string v5, "ActivityTaskManager"

    .line 1332
    .line 1333
    if-eqz v4, :cond_3d

    .line 1334
    .line 1335
    const/4 v4, 0x1

    .line 1336
    const/4 v6, 0x3

    .line 1337
    invoke-virtual {v1, v6, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 1338
    .line 1339
    .line 1340
    move-result v11

    .line 1341
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    const-string v6, "Eval win "

    .line 1344
    .line 1345
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    const-string v6, ": isDrawn="

    .line 1352
    .line 1353
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 1357
    .line 1358
    .line 1359
    move-result v6

    .line 1360
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    .line 1363
    const-string v6, ", isAnimationSet="

    .line 1364
    .line 1365
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v4

    .line 1375
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 1379
    .line 1380
    .line 1381
    move-result v4

    .line 1382
    if-nez v4, :cond_3d

    .line 1383
    .line 1384
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    const-string v6, "Not displayed: s="

    .line 1387
    .line 1388
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    iget-object v6, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1392
    .line 1393
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    .line 1396
    const-string v6, " pv="

    .line 1397
    .line 1398
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 1402
    .line 1403
    .line 1404
    move-result v6

    .line 1405
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    .line 1408
    const-string v6, " mDrawState="

    .line 1409
    .line 1410
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v2

    .line 1417
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    .line 1419
    .line 1420
    const-string v2, " ph="

    .line 1421
    .line 1422
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 1426
    .line 1427
    .line 1428
    move-result v2

    .line 1429
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1430
    .line 1431
    .line 1432
    const-string v2, " th="

    .line 1433
    .line 1434
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .line 1436
    .line 1437
    iget-boolean v2, v1, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 1438
    .line 1439
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    .line 1442
    const-string v2, " a="

    .line 1443
    .line 1444
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v2

    .line 1454
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    .line 1456
    .line 1457
    :cond_3d
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 1458
    .line 1459
    if-eq v7, v2, :cond_42

    .line 1460
    .line 1461
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1462
    .line 1463
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 1464
    .line 1465
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1466
    .line 1467
    if-eqz v4, :cond_42

    .line 1468
    .line 1469
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    .line 1470
    .line 1471
    if-eqz v6, :cond_3e

    .line 1472
    .line 1473
    iget-boolean v6, v7, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 1474
    .line 1475
    if-nez v6, :cond_42

    .line 1476
    .line 1477
    :cond_3e
    iget v6, v7, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 1478
    .line 1479
    if-nez v6, :cond_42

    .line 1480
    .line 1481
    if-eqz v2, :cond_3f

    .line 1482
    .line 1483
    invoke-virtual {v2, v4}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1484
    .line 1485
    .line 1486
    move-result v2

    .line 1487
    if-eqz v2, :cond_3f

    .line 1488
    .line 1489
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1490
    .line 1491
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1492
    .line 1493
    const/4 v6, 0x1

    .line 1494
    if-eq v4, v6, :cond_3f

    .line 1495
    .line 1496
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1497
    .line 1498
    const/4 v4, 0x0

    .line 1499
    cmpl-float v2, v2, v4

    .line 1500
    .line 1501
    if-nez v2, :cond_3f

    .line 1502
    .line 1503
    goto :goto_16

    .line 1504
    :cond_3f
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v2

    .line 1508
    if-eq v2, v7, :cond_40

    .line 1509
    .line 1510
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 1511
    .line 1512
    const/4 v4, 0x1

    .line 1513
    add-int/2addr v2, v4

    .line 1514
    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 1515
    .line 1516
    goto :goto_15

    .line 1517
    :cond_40
    const/4 v4, 0x1

    .line 1518
    :goto_15
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 1519
    .line 1520
    .line 1521
    move-result v2

    .line 1522
    if-eqz v2, :cond_42

    .line 1523
    .line 1524
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 1525
    .line 1526
    add-int/2addr v2, v4

    .line 1527
    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 1528
    .line 1529
    invoke-virtual {v3}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    .line 1530
    .line 1531
    .line 1532
    move-result v2

    .line 1533
    if-eqz v2, :cond_41

    .line 1534
    .line 1535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1536
    .line 1537
    const-string/jumbo v3, "tokenMayBeDrawn: "

    .line 1538
    .line 1539
    .line 1540
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1544
    .line 1545
    .line 1546
    const-string v3, " w="

    .line 1547
    .line 1548
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1552
    .line 1553
    .line 1554
    const-string v3, " numInteresting="

    .line 1555
    .line 1556
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    .line 1558
    .line 1559
    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 1560
    .line 1561
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    const-string v3, " freezingScreen="

    .line 1565
    .line 1566
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    .line 1569
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    .line 1570
    .line 1571
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    const-string v3, " mAppFreezing="

    .line 1575
    .line 1576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    .line 1579
    iget-boolean v3, v7, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 1580
    .line 1581
    invoke-static {v5, v2, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1582
    .line 1583
    .line 1584
    :cond_41
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 1585
    .line 1586
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v2

    .line 1590
    if-nez v2, :cond_42

    .line 1591
    .line 1592
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 1593
    .line 1594
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1595
    .line 1596
    .line 1597
    :cond_42
    :goto_16
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1598
    .line 1599
    iget-boolean v0, v0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    .line 1600
    .line 1601
    iget-boolean v2, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 1602
    .line 1603
    if-eqz v2, :cond_43

    .line 1604
    .line 1605
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v2

    .line 1609
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 1610
    .line 1611
    iget v3, v7, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1612
    .line 1613
    if-ne v2, v3, :cond_43

    .line 1614
    .line 1615
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 1616
    .line 1617
    .line 1618
    move-result v2

    .line 1619
    if-eqz v2, :cond_44

    .line 1620
    .line 1621
    :cond_43
    if-nez v0, :cond_44

    .line 1622
    .line 1623
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 1624
    .line 1625
    .line 1626
    move-result v2

    .line 1627
    if-eqz v2, :cond_5a

    .line 1628
    .line 1629
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1630
    .line 1631
    iget-boolean v2, v2, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 1632
    .line 1633
    if-eqz v2, :cond_5a

    .line 1634
    .line 1635
    :cond_44
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1636
    .line 1637
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1638
    .line 1639
    iget-boolean v4, v3, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 1640
    .line 1641
    iget-boolean v5, v3, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 1642
    .line 1643
    or-int/2addr v4, v5

    .line 1644
    iput-boolean v4, v3, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 1645
    .line 1646
    iget-boolean v4, v3, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 1647
    .line 1648
    invoke-virtual {v3}, Lcom/android/server/wm/WindowFrames;->didFrameSizeChange()Z

    .line 1649
    .line 1650
    .line 1651
    move-result v5

    .line 1652
    or-int/2addr v4, v5

    .line 1653
    iput-boolean v4, v3, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 1654
    .line 1655
    iget-boolean v3, v3, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 1656
    .line 1657
    if-nez v3, :cond_46

    .line 1658
    .line 1659
    if-eqz v4, :cond_45

    .line 1660
    .line 1661
    goto :goto_17

    .line 1662
    :cond_45
    move v3, v9

    .line 1663
    goto :goto_18

    .line 1664
    :cond_46
    :goto_17
    const/4 v3, 0x1

    .line 1665
    :goto_18
    iget-boolean v4, v7, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 1666
    .line 1667
    if-nez v4, :cond_47

    .line 1668
    .line 1669
    iget-boolean v4, v7, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 1670
    .line 1671
    if-nez v4, :cond_47

    .line 1672
    .line 1673
    const/4 v4, 0x1

    .line 1674
    goto :goto_19

    .line 1675
    :cond_47
    move v4, v9

    .line 1676
    :goto_19
    iget-boolean v5, v7, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 1677
    .line 1678
    if-nez v5, :cond_48

    .line 1679
    .line 1680
    iget-boolean v5, v7, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 1681
    .line 1682
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    .line 1683
    .line 1684
    .line 1685
    move-result v6

    .line 1686
    if-eq v5, v6, :cond_48

    .line 1687
    .line 1688
    const/4 v5, 0x1

    .line 1689
    goto :goto_1a

    .line 1690
    :cond_48
    move v5, v9

    .line 1691
    :goto_1a
    iget-boolean v6, v7, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 1692
    .line 1693
    if-eqz v6, :cond_49

    .line 1694
    .line 1695
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v6

    .line 1699
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1700
    .line 1701
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1702
    .line 1703
    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 1704
    .line 1705
    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v6

    .line 1709
    const/4 v8, 0x1

    .line 1710
    xor-int/2addr v6, v8

    .line 1711
    if-eqz v6, :cond_49

    .line 1712
    .line 1713
    const/4 v6, 0x1

    .line 1714
    goto :goto_1b

    .line 1715
    :cond_49
    move v6, v9

    .line 1716
    :goto_1b
    if-nez v3, :cond_4b

    .line 1717
    .line 1718
    if-nez v4, :cond_4b

    .line 1719
    .line 1720
    if-nez v5, :cond_4b

    .line 1721
    .line 1722
    if-eqz v6, :cond_4a

    .line 1723
    .line 1724
    goto :goto_1c

    .line 1725
    :cond_4a
    move v6, v9

    .line 1726
    goto :goto_1d

    .line 1727
    :cond_4b
    :goto_1c
    const/4 v6, 0x1

    .line 1728
    :goto_1d
    if-nez v6, :cond_4c

    .line 1729
    .line 1730
    iget-boolean v8, v7, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 1731
    .line 1732
    if-nez v8, :cond_4c

    .line 1733
    .line 1734
    iget v8, v7, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 1735
    .line 1736
    if-gtz v8, :cond_4c

    .line 1737
    .line 1738
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 1739
    .line 1740
    check-cast v8, Ljava/util/ArrayList;

    .line 1741
    .line 1742
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1743
    .line 1744
    .line 1745
    move-result v8

    .line 1746
    if-eqz v8, :cond_4c

    .line 1747
    .line 1748
    const/4 v8, 0x1

    .line 1749
    iput-boolean v8, v7, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 1750
    .line 1751
    :cond_4c
    if-nez v6, :cond_4f

    .line 1752
    .line 1753
    if-nez v0, :cond_4f

    .line 1754
    .line 1755
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    .line 1756
    .line 1757
    .line 1758
    move-result v6

    .line 1759
    if-eqz v6, :cond_4d

    .line 1760
    .line 1761
    goto :goto_1e

    .line 1762
    :cond_4d
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 1763
    .line 1764
    .line 1765
    move-result v0

    .line 1766
    if-eqz v0, :cond_5a

    .line 1767
    .line 1768
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 1769
    .line 1770
    .line 1771
    move-result v0

    .line 1772
    if-eqz v0, :cond_5a

    .line 1773
    .line 1774
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 1775
    .line 1776
    const/4 v3, 0x1

    .line 1777
    aget-boolean v0, v0, v3

    .line 1778
    .line 1779
    if-eqz v0, :cond_4e

    .line 1780
    .line 1781
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v0

    .line 1785
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1786
    .line 1787
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v2

    .line 1791
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1792
    .line 1793
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v15

    .line 1797
    const-wide v11, -0x259c86401fa2c660L    # -2.6366875818304025E127

    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    const/4 v13, 0x0

    .line 1803
    const/4 v14, 0x0

    .line 1804
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1805
    .line 1806
    .line 1807
    :cond_4e
    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1808
    .line 1809
    .line 1810
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1811
    .line 1812
    .line 1813
    move-result-wide v2

    .line 1814
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1815
    .line 1816
    iget-wide v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 1817
    .line 1818
    sub-long/2addr v2, v4

    .line 1819
    long-to-int v0, v2

    .line 1820
    iput v0, v7, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1821
    .line 1822
    goto/16 :goto_20

    .line 1823
    .line 1824
    :cond_4f
    :goto_1e
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    .line 1825
    .line 1826
    const/4 v8, 0x1

    .line 1827
    aget-boolean v11, v6, v8

    .line 1828
    .line 1829
    if-eqz v11, :cond_50

    .line 1830
    .line 1831
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v12

    .line 1835
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1836
    .line 1837
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1838
    .line 1839
    const-string v13, "forceReportingResized="

    .line 1840
    .line 1841
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1842
    .line 1843
    .line 1844
    iget-boolean v13, v8, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 1845
    .line 1846
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1847
    .line 1848
    .line 1849
    const-string v13, " insetsChanged="

    .line 1850
    .line 1851
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    .line 1853
    .line 1854
    iget-boolean v8, v8, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    .line 1855
    .line 1856
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v8

    .line 1863
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v13

    .line 1867
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    .line 1868
    .line 1869
    .line 1870
    move-result v8

    .line 1871
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1872
    .line 1873
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v14

    .line 1877
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v15

    .line 1881
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v16

    .line 1885
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v17

    .line 1889
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v19

    .line 1893
    const/16 v17, 0xff0

    .line 1894
    .line 1895
    const/16 v18, 0x0

    .line 1896
    .line 1897
    const-wide v15, -0x4f84b1b83b33c791L    # -3.7730774575619675E-75

    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    move-object v14, v11

    .line 1903
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1904
    .line 1905
    .line 1906
    :cond_50
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->consumeInsetsChange()V

    .line 1907
    .line 1908
    .line 1909
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1910
    .line 1911
    iput-boolean v9, v0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 1912
    .line 1913
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1914
    .line 1915
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 1916
    .line 1917
    .line 1918
    if-nez v4, :cond_51

    .line 1919
    .line 1920
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 1921
    .line 1922
    .line 1923
    move-result v0

    .line 1924
    if-nez v0, :cond_51

    .line 1925
    .line 1926
    if-eqz v5, :cond_58

    .line 1927
    .line 1928
    :cond_51
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 1929
    .line 1930
    .line 1931
    move-result v0

    .line 1932
    if-eqz v0, :cond_58

    .line 1933
    .line 1934
    const/4 v0, 0x1

    .line 1935
    iput v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1936
    .line 1937
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1938
    .line 1939
    if-eqz v0, :cond_52

    .line 1940
    .line 1941
    iput-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 1942
    .line 1943
    iput-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    .line 1944
    .line 1945
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1946
    .line 1947
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1948
    .line 1949
    const/4 v3, 0x3

    .line 1950
    if-ne v2, v3, :cond_58

    .line 1951
    .line 1952
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1953
    .line 1954
    if-eqz v0, :cond_58

    .line 1955
    .line 1956
    iput-boolean v9, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    .line 1957
    .line 1958
    goto/16 :goto_1f

    .line 1959
    .line 1960
    :cond_52
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_WAIT_TO_HANDLE_RESIZING_FROM_CLIENT:Z

    .line 1961
    .line 1962
    if-eqz v2, :cond_58

    .line 1963
    .line 1964
    if-eqz v3, :cond_58

    .line 1965
    .line 1966
    if-nez v0, :cond_58

    .line 1967
    .line 1968
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1969
    .line 1970
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v0

    .line 1974
    if-nez v0, :cond_58

    .line 1975
    .line 1976
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1977
    .line 1978
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v0

    .line 1982
    if-eqz v0, :cond_53

    .line 1983
    .line 1984
    goto :goto_1f

    .line 1985
    :cond_53
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 1986
    .line 1987
    if-eqz v0, :cond_54

    .line 1988
    .line 1989
    goto :goto_1f

    .line 1990
    :cond_54
    iget v0, v7, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 1991
    .line 1992
    if-nez v0, :cond_55

    .line 1993
    .line 1994
    goto :goto_1f

    .line 1995
    :cond_55
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v0

    .line 1999
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v0

    .line 2003
    if-eqz v0, :cond_56

    .line 2004
    .line 2005
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2006
    .line 2007
    iget-object v0, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 2008
    .line 2009
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 2010
    .line 2011
    .line 2012
    move-result v0

    .line 2013
    if-eqz v0, :cond_56

    .line 2014
    .line 2015
    goto :goto_1f

    .line 2016
    :cond_56
    iget-boolean v0, v7, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2017
    .line 2018
    if-nez v0, :cond_58

    .line 2019
    .line 2020
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 2021
    .line 2022
    .line 2023
    move-result v0

    .line 2024
    if-eqz v0, :cond_58

    .line 2025
    .line 2026
    iget-boolean v0, v7, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    .line 2027
    .line 2028
    if-eqz v0, :cond_57

    .line 2029
    .line 2030
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v0

    .line 2034
    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    .line 2035
    .line 2036
    .line 2037
    const/4 v0, 0x2

    .line 2038
    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    .line 2039
    .line 2040
    .line 2041
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2042
    .line 2043
    const-string/jumbo v2, "updateResizingWindowIfNeeded, Start waiting to handle resizing w="

    .line 2044
    .line 2045
    .line 2046
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2050
    .line 2051
    .line 2052
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v0

    .line 2056
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    .line 2058
    .line 2059
    const/4 v0, 0x1

    .line 2060
    iput-boolean v0, v7, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    .line 2061
    .line 2062
    new-instance v0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    .line 2063
    .line 2064
    const/4 v2, 0x2

    .line 2065
    invoke-direct {v0, v7, v2}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;I)V

    .line 2066
    .line 2067
    .line 2068
    const/4 v2, 0x2

    .line 2069
    invoke-virtual {v7, v2, v0}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(ILjava/util/function/Consumer;)V

    .line 2070
    .line 2071
    .line 2072
    :cond_58
    :goto_1f
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2073
    .line 2074
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 2075
    .line 2076
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2077
    .line 2078
    .line 2079
    move-result v0

    .line 2080
    if-nez v0, :cond_5a

    .line 2081
    .line 2082
    const/4 v0, 0x1

    .line 2083
    aget-boolean v0, v6, v0

    .line 2084
    .line 2085
    if-eqz v0, :cond_59

    .line 2086
    .line 2087
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v0

    .line 2091
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2092
    .line 2093
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v13

    .line 2097
    const-wide v9, -0x77db5563b0d2c405L

    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    const/4 v11, 0x0

    .line 2103
    const/4 v12, 0x0

    .line 2104
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2105
    .line 2106
    .line 2107
    :cond_59
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2108
    .line 2109
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 2110
    .line 2111
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    .line 2113
    .line 2114
    :cond_5a
    :goto_20
    if-nez v1, :cond_5b

    .line 2115
    .line 2116
    iget-boolean v0, v7, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 2117
    .line 2118
    if-eqz v0, :cond_5c

    .line 2119
    .line 2120
    :cond_5b
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->updateLetterboxDirectionIfNeeded()V

    .line 2121
    .line 2122
    .line 2123
    :cond_5c
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda41(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 8
    .line 9
    sget-object v2, Lcom/android/server/wm/DeviceStateController$DeviceState;->FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 10
    .line 11
    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 12
    .line 13
    sget-object v4, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    if-eq p1, v4, :cond_0

    .line 18
    .line 19
    if-ne p1, v3, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mShouldRequestTransitionOnDisplaySwitch:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-eq p1, v4, :cond_2

    .line 26
    .line 27
    if-eq p1, v3, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mShouldRequestTransitionOnDisplaySwitch:Z

    .line 31
    .line 32
    :cond_2
    :goto_0
    iput-object p1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation$FoldController;->foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceState;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0

    .line 53
    :cond_3
    :goto_1
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda46(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 32
    .line 33
    or-int/lit8 p1, p1, 0x8

    .line 34
    .line 35
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda53(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 25
    .line 26
    sub-long/2addr v0, v2

    .line 27
    long-to-int p0, v0

    .line 28
    iput p0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "Force clearing orientation change: "

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "WindowManager"

    .line 45
    .line 46
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 17
    .line 18
    iget v1, v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda46(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda41(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda37(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 37
    .line 38
    move-object/from16 v1, p1

    .line 39
    .line 40
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda53(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 57
    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    check-cast v1, Lcom/android/server/wm/DisplayArea;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 77
    .line 78
    iget v2, v1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    :goto_0
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    return-void

    .line 104
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 105
    .line 106
    move-object/from16 v1, p1

    .line 107
    .line 108
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 114
    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 129
    .line 130
    if-eqz v2, :cond_8

    .line 131
    .line 132
    :cond_4
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 138
    .line 139
    iput-boolean v3, v2, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 140
    .line 141
    :cond_5
    const/4 v2, 0x1

    .line 142
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 143
    .line 144
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 145
    .line 146
    iget v4, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 147
    .line 148
    const/4 v5, -0x1

    .line 149
    if-eq v4, v5, :cond_6

    .line 150
    .line 151
    move v4, v2

    .line 152
    goto :goto_2

    .line 153
    :cond_6
    move v4, v3

    .line 154
    :goto_2
    xor-int/2addr v2, v4

    .line 155
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 156
    .line 157
    const/4 v5, 0x0

    .line 158
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 159
    .line 160
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 161
    .line 162
    .line 163
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 164
    .line 165
    iput v4, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 166
    .line 167
    if-eqz v2, :cond_8

    .line 168
    .line 169
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 170
    .line 171
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-nez v2, :cond_7

    .line 178
    .line 179
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 180
    .line 181
    iget-object v4, v2, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 182
    .line 183
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 184
    .line 185
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 186
    .line 187
    .line 188
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 189
    .line 190
    iget-object v4, v2, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 191
    .line 192
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 193
    .line 194
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 198
    .line 199
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 205
    .line 206
    .line 207
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 208
    .line 209
    iput-boolean v3, v0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 210
    .line 211
    :cond_8
    :goto_3
    return-void

    .line 212
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 213
    .line 214
    move-object/from16 v1, p1

    .line 215
    .line 216
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 217
    .line 218
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 219
    .line 220
    iget v2, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 221
    .line 222
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 225
    .line 226
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 227
    .line 228
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 229
    .line 230
    const/16 v4, 0x7d5

    .line 231
    .line 232
    if-ne v3, v4, :cond_9

    .line 233
    .line 234
    iget v3, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 235
    .line 236
    if-ne v3, v2, :cond_9

    .line 237
    .line 238
    const/16 v2, 0x34

    .line 239
    .line 240
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-nez v3, :cond_9

    .line 245
    .line 246
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 251
    .line 252
    iget-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 253
    .line 254
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    .line 256
    .line 257
    :cond_9
    return-void

    .line 258
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda40(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_9
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 263
    .line 264
    move-object/from16 v1, p1

    .line 265
    .line 266
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 267
    .line 268
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 269
    .line 270
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 282
    .line 283
    const/4 v6, 0x2

    .line 284
    const/4 v7, 0x5

    .line 285
    const/4 v8, 0x3

    .line 286
    const/4 v10, 0x1

    .line 287
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 288
    .line 289
    const/16 v12, 0x7e3

    .line 290
    .line 291
    if-ne v5, v12, :cond_d

    .line 292
    .line 293
    iget-object v5, v11, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 294
    .line 295
    iget v5, v5, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 296
    .line 297
    iget-object v13, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 298
    .line 299
    if-eqz v13, :cond_c

    .line 300
    .line 301
    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 302
    .line 303
    invoke-virtual {v13, v5}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 308
    .line 309
    if-eq v5, v8, :cond_b

    .line 310
    .line 311
    if-eq v5, v7, :cond_a

    .line 312
    .line 313
    const/4 v5, 0x4

    .line 314
    goto :goto_4

    .line 315
    :cond_a
    move v5, v6

    .line 316
    goto :goto_4

    .line 317
    :cond_b
    move v5, v10

    .line 318
    goto :goto_4

    .line 319
    :cond_c
    const/4 v5, -0x1

    .line 320
    :goto_4
    iput v5, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 321
    .line 322
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-eqz v5, :cond_e

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_e
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 330
    .line 331
    if-nez v5, :cond_11

    .line 332
    .line 333
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 334
    .line 335
    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 340
    .line 341
    if-nez v14, :cond_10

    .line 342
    .line 343
    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 344
    .line 345
    if-eqz v14, :cond_f

    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_f
    const/4 v14, 0x0

    .line 349
    goto :goto_6

    .line 350
    :cond_10
    :goto_5
    move v14, v10

    .line 351
    :goto_6
    if-eqz v5, :cond_13

    .line 352
    .line 353
    if-nez v14, :cond_13

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_11
    iget-object v14, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 357
    .line 358
    if-eqz v14, :cond_13

    .line 359
    .line 360
    iget-boolean v14, v14, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 361
    .line 362
    if-eqz v14, :cond_13

    .line 363
    .line 364
    iget-boolean v14, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 365
    .line 366
    if-eqz v14, :cond_13

    .line 367
    .line 368
    iget-boolean v14, v5, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 369
    .line 370
    if-nez v14, :cond_13

    .line 371
    .line 372
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-nez v5, :cond_13

    .line 377
    .line 378
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 379
    .line 380
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 381
    .line 382
    if-ne v5, v8, :cond_12

    .line 383
    .line 384
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 385
    .line 386
    instance-of v5, v5, Lcom/android/server/wm/SnapshotStartingData;

    .line 387
    .line 388
    if-nez v5, :cond_13

    .line 389
    .line 390
    :cond_12
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-nez v5, :cond_13

    .line 395
    .line 396
    move v5, v10

    .line 397
    goto :goto_9

    .line 398
    :cond_13
    :goto_8
    const/4 v5, 0x0

    .line 399
    :goto_9
    iget-object v14, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 400
    .line 401
    iget-object v15, v14, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 402
    .line 403
    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 404
    .line 405
    iget-object v15, v15, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 406
    .line 407
    iget v15, v15, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 408
    .line 409
    const/16 v7, 0x6e

    .line 410
    .line 411
    if-ne v15, v7, :cond_14

    .line 412
    .line 413
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 414
    .line 415
    const/high16 v15, 0x200000

    .line 416
    .line 417
    and-int/2addr v7, v15

    .line 418
    if-eqz v7, :cond_14

    .line 419
    .line 420
    iget-wide v12, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 421
    .line 422
    const-wide/16 v7, 0x0

    .line 423
    .line 424
    cmp-long v12, v12, v7

    .line 425
    .line 426
    if-gez v12, :cond_14

    .line 427
    .line 428
    const-wide/16 v12, 0x146a

    .line 429
    .line 430
    iput-wide v12, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 431
    .line 432
    iput-wide v7, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 433
    .line 434
    :cond_14
    iget-object v7, v14, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 435
    .line 436
    if-nez v7, :cond_15

    .line 437
    .line 438
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 439
    .line 440
    const/high16 v8, 0x10000

    .line 441
    .line 442
    and-int/2addr v7, v8

    .line 443
    if-eqz v7, :cond_15

    .line 444
    .line 445
    iput-object v1, v14, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 446
    .line 447
    :cond_15
    iget-object v8, v14, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 448
    .line 449
    if-eqz v8, :cond_1c

    .line 450
    .line 451
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    iget v12, v7, Lcom/samsung/android/cover/CoverState;->type:I

    .line 456
    .line 457
    packed-switch v12, :pswitch_data_1

    .line 458
    .line 459
    .line 460
    goto/16 :goto_e

    .line 461
    .line 462
    :pswitch_a
    iget-boolean v7, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 463
    .line 464
    xor-int/2addr v7, v10

    .line 465
    if-eqz v7, :cond_1c

    .line 466
    .line 467
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 468
    .line 469
    if-nez v7, :cond_18

    .line 470
    .line 471
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 472
    .line 473
    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 474
    .line 475
    .line 476
    move-result v7

    .line 477
    iget-boolean v12, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 478
    .line 479
    if-nez v12, :cond_17

    .line 480
    .line 481
    iget-boolean v12, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 482
    .line 483
    if-eqz v12, :cond_16

    .line 484
    .line 485
    goto :goto_a

    .line 486
    :cond_16
    const/4 v12, 0x0

    .line 487
    goto :goto_b

    .line 488
    :cond_17
    :goto_a
    move v12, v10

    .line 489
    :goto_b
    if-eqz v7, :cond_1c

    .line 490
    .line 491
    if-nez v12, :cond_1c

    .line 492
    .line 493
    goto :goto_c

    .line 494
    :cond_18
    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 495
    .line 496
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 501
    .line 502
    if-ne v7, v12, :cond_1c

    .line 503
    .line 504
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    if-nez v7, :cond_1c

    .line 513
    .line 514
    :goto_c
    iget-object v7, v8, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 515
    .line 516
    if-nez v7, :cond_1c

    .line 517
    .line 518
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    .line 519
    .line 520
    .line 521
    move-result v7

    .line 522
    if-eqz v7, :cond_1c

    .line 523
    .line 524
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 525
    .line 526
    .line 527
    move-result v12

    .line 528
    if-eqz v12, :cond_1c

    .line 529
    .line 530
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 531
    .line 532
    if-eqz v12, :cond_1b

    .line 533
    .line 534
    iget-object v12, v12, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 535
    .line 536
    if-ne v7, v10, :cond_19

    .line 537
    .line 538
    iget-object v7, v8, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 539
    .line 540
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    goto :goto_d

    .line 544
    :cond_19
    if-ne v7, v6, :cond_1a

    .line 545
    .line 546
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    .line 547
    .line 548
    if-eqz v7, :cond_1b

    .line 549
    .line 550
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    .line 551
    .line 552
    if-nez v7, :cond_1b

    .line 553
    .line 554
    iget-object v7, v8, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 555
    .line 556
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    goto :goto_d

    .line 560
    :cond_1a
    if-eqz v12, :cond_1b

    .line 561
    .line 562
    iget-object v7, v8, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 563
    .line 564
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    :cond_1b
    :goto_d
    iget-object v7, v8, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 568
    .line 569
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    .line 570
    .line 571
    .line 572
    move-result v7

    .line 573
    if-eqz v7, :cond_1c

    .line 574
    .line 575
    iput-object v1, v8, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 576
    .line 577
    :cond_1c
    :goto_e
    iget-object v7, v14, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 578
    .line 579
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 580
    .line 581
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 582
    .line 583
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    .line 587
    .line 588
    if-eqz v12, :cond_1d

    .line 589
    .line 590
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 591
    .line 592
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 593
    .line 594
    const/16 v13, 0xa2c

    .line 595
    .line 596
    if-ne v12, v13, :cond_1d

    .line 597
    .line 598
    move v12, v10

    .line 599
    goto :goto_f

    .line 600
    :cond_1d
    const/4 v12, 0x0

    .line 601
    :goto_f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 602
    .line 603
    .line 604
    move-result-object v13

    .line 605
    if-eqz v13, :cond_1e

    .line 606
    .line 607
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 608
    .line 609
    .line 610
    move-result v16

    .line 611
    if-eqz v16, :cond_1e

    .line 612
    .line 613
    goto :goto_10

    .line 614
    :cond_1e
    if-eqz v12, :cond_2c

    .line 615
    .line 616
    :goto_10
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 617
    .line 618
    .line 619
    move-result-object v15

    .line 620
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    if-eqz v6, :cond_2c

    .line 625
    .line 626
    iget-boolean v9, v6, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 627
    .line 628
    if-eqz v9, :cond_2c

    .line 629
    .line 630
    iget-object v9, v7, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 631
    .line 632
    if-eqz v12, :cond_1f

    .line 633
    .line 634
    iget-object v10, v6, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 635
    .line 636
    iget-object v10, v10, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 637
    .line 638
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 639
    .line 640
    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 641
    .line 642
    invoke-virtual {v10, v6}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    .line 643
    .line 644
    .line 645
    move-result v6

    .line 646
    if-eqz v6, :cond_1f

    .line 647
    .line 648
    goto :goto_11

    .line 649
    :cond_1f
    if-eqz v12, :cond_20

    .line 650
    .line 651
    iget-object v6, v7, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 652
    .line 653
    if-eqz v6, :cond_20

    .line 654
    .line 655
    goto :goto_11

    .line 656
    :cond_20
    iget-boolean v6, v7, Lcom/android/server/wm/FreeformController;->mBlockToAddForceHideFreeformTasks:Z

    .line 657
    .line 658
    if-eqz v6, :cond_21

    .line 659
    .line 660
    if-eqz v15, :cond_21

    .line 661
    .line 662
    iget-object v6, v7, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 663
    .line 664
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v6

    .line 668
    if-nez v6, :cond_21

    .line 669
    .line 670
    goto/16 :goto_16

    .line 671
    .line 672
    :cond_21
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 673
    .line 674
    if-eqz v6, :cond_22

    .line 675
    .line 676
    if-eqz v15, :cond_22

    .line 677
    .line 678
    iget-object v6, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 679
    .line 680
    invoke-virtual {v6, v15}, Lcom/android/server/wm/ChangeTransitionController;->isInChangeTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 681
    .line 682
    .line 683
    move-result v6

    .line 684
    if-eqz v6, :cond_22

    .line 685
    .line 686
    goto/16 :goto_16

    .line 687
    .line 688
    :cond_22
    iget-object v6, v7, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 689
    .line 690
    if-eqz v6, :cond_2c

    .line 691
    .line 692
    if-eq v6, v1, :cond_2c

    .line 693
    .line 694
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 695
    .line 696
    if-eqz v6, :cond_23

    .line 697
    .line 698
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 699
    .line 700
    if-eq v6, v10, :cond_2c

    .line 701
    .line 702
    :cond_23
    :goto_11
    if-eqz v12, :cond_24

    .line 703
    .line 704
    iget-object v6, v7, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 705
    .line 706
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v6

    .line 710
    if-nez v6, :cond_24

    .line 711
    .line 712
    iget-object v6, v7, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    const/4 v6, 0x1

    .line 718
    invoke-virtual {v1, v6, v6}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 719
    .line 720
    .line 721
    :cond_24
    if-eqz v13, :cond_2a

    .line 722
    .line 723
    iget-object v6, v7, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 724
    .line 725
    if-eqz v6, :cond_26

    .line 726
    .line 727
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 728
    .line 729
    .line 730
    move-result v6

    .line 731
    if-nez v6, :cond_25

    .line 732
    .line 733
    iget-object v6, v7, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 734
    .line 735
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 736
    .line 737
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 738
    .line 739
    const/16 v8, 0xa48

    .line 740
    .line 741
    if-ne v6, v8, :cond_26

    .line 742
    .line 743
    :cond_25
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 744
    .line 745
    .line 746
    move-result-object v6

    .line 747
    if-nez v6, :cond_26

    .line 748
    .line 749
    goto :goto_14

    .line 750
    :cond_26
    iget-object v6, v13, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 751
    .line 752
    if-eqz v6, :cond_2a

    .line 753
    .line 754
    const/4 v6, 0x0

    .line 755
    invoke-virtual {v13, v6}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 756
    .line 757
    .line 758
    move-result v8

    .line 759
    if-eqz v8, :cond_2b

    .line 760
    .line 761
    iget-object v8, v7, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 762
    .line 763
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v8

    .line 767
    if-nez v8, :cond_2b

    .line 768
    .line 769
    iget-object v8, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 770
    .line 771
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 772
    .line 773
    invoke-virtual {v8}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 774
    .line 775
    .line 776
    move-result v9

    .line 777
    if-nez v9, :cond_28

    .line 778
    .line 779
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 780
    .line 781
    .line 782
    move-result v9

    .line 783
    if-nez v9, :cond_27

    .line 784
    .line 785
    goto :goto_12

    .line 786
    :cond_27
    iget-object v9, v8, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 787
    .line 788
    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 789
    .line 790
    .line 791
    iget-object v9, v8, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 792
    .line 793
    invoke-virtual {v9, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    iget-object v9, v8, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 797
    .line 798
    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 799
    .line 800
    .line 801
    :cond_28
    :goto_12
    iget-object v8, v7, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 802
    .line 803
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    iget-boolean v8, v7, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    .line 807
    .line 808
    if-eqz v8, :cond_29

    .line 809
    .line 810
    const/4 v8, 0x3

    .line 811
    invoke-virtual {v7, v8, v13}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    .line 812
    .line 813
    .line 814
    const/4 v8, 0x1

    .line 815
    goto :goto_13

    .line 816
    :cond_29
    const/4 v8, 0x1

    .line 817
    invoke-virtual {v7, v8, v13}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    .line 818
    .line 819
    .line 820
    :goto_13
    invoke-virtual {v13, v8}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 821
    .line 822
    .line 823
    new-instance v7, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    const-string v8, "applyForceHidePolicyIfNeededLocked: "

    .line 826
    .line 827
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v7

    .line 837
    const-string v8, "FreeformController"

    .line 838
    .line 839
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    .line 841
    .line 842
    goto :goto_15

    .line 843
    :cond_2a
    :goto_14
    const/4 v6, 0x0

    .line 844
    :cond_2b
    :goto_15
    const/4 v6, 0x1

    .line 845
    goto/16 :goto_24

    .line 846
    .line 847
    :cond_2c
    :goto_16
    const/4 v6, 0x0

    .line 848
    invoke-virtual {v7, v1}, Lcom/android/server/wm/FreeformController;->releaseForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 849
    .line 850
    .line 851
    if-eqz v8, :cond_43

    .line 852
    .line 853
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 854
    .line 855
    .line 856
    move-result-object v10

    .line 857
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 858
    .line 859
    if-eqz v7, :cond_2d

    .line 860
    .line 861
    goto/16 :goto_22

    .line 862
    .line 863
    :cond_2d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    .line 864
    .line 865
    .line 866
    move-result v7

    .line 867
    const/16 v12, 0x833

    .line 868
    .line 869
    const/16 v13, 0xa47

    .line 870
    .line 871
    const/16 v15, 0xa46

    .line 872
    .line 873
    if-eqz v7, :cond_2f

    .line 874
    .line 875
    const/4 v6, 0x1

    .line 876
    if-eq v7, v6, :cond_42

    .line 877
    .line 878
    const/4 v6, 0x2

    .line 879
    if-eq v7, v6, :cond_2e

    .line 880
    .line 881
    const/16 v6, 0xa

    .line 882
    .line 883
    if-eq v7, v6, :cond_42

    .line 884
    .line 885
    goto :goto_17

    .line 886
    :cond_2e
    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    .line 887
    .line 888
    if-eqz v6, :cond_30

    .line 889
    .line 890
    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    .line 891
    .line 892
    if-nez v6, :cond_30

    .line 893
    .line 894
    goto/16 :goto_22

    .line 895
    .line 896
    :cond_2f
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 897
    .line 898
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 899
    .line 900
    const/16 v7, 0x7d0

    .line 901
    .line 902
    if-eq v6, v7, :cond_42

    .line 903
    .line 904
    const/16 v7, 0x7d5

    .line 905
    .line 906
    if-eq v6, v7, :cond_42

    .line 907
    .line 908
    const/16 v7, 0x7dd

    .line 909
    .line 910
    if-eq v6, v7, :cond_42

    .line 911
    .line 912
    const/16 v7, 0x7f8

    .line 913
    .line 914
    if-eq v6, v7, :cond_42

    .line 915
    .line 916
    const/16 v7, 0x96b

    .line 917
    .line 918
    if-eq v6, v7, :cond_42

    .line 919
    .line 920
    const/16 v7, 0x7e3

    .line 921
    .line 922
    if-eq v6, v7, :cond_42

    .line 923
    .line 924
    const/16 v7, 0x7e4

    .line 925
    .line 926
    if-eq v6, v7, :cond_42

    .line 927
    .line 928
    if-eq v6, v15, :cond_31

    .line 929
    .line 930
    if-eq v6, v13, :cond_31

    .line 931
    .line 932
    :cond_30
    :goto_17
    iget-object v6, v8, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 933
    .line 934
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    .line 938
    .line 939
    .line 940
    move-result v6

    .line 941
    invoke-static {v12}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 942
    .line 943
    .line 944
    move-result v7

    .line 945
    if-gt v6, v7, :cond_42

    .line 946
    .line 947
    :cond_31
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 948
    .line 949
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 950
    .line 951
    if-ne v6, v15, :cond_34

    .line 952
    .line 953
    iget-object v6, v8, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 954
    .line 955
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 956
    .line 957
    check-cast v6, Lcom/android/server/policy/PhoneWindowManager;

    .line 958
    .line 959
    const/4 v7, 0x4

    .line 960
    invoke-virtual {v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    .line 961
    .line 962
    .line 963
    move-result v6

    .line 964
    if-eqz v6, :cond_32

    .line 965
    .line 966
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 967
    .line 968
    .line 969
    move-result-object v6

    .line 970
    invoke-virtual {v6}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    .line 971
    .line 972
    .line 973
    move-result v6

    .line 974
    if-nez v6, :cond_33

    .line 975
    .line 976
    :cond_32
    const/4 v6, 0x0

    .line 977
    const/4 v7, 0x1

    .line 978
    goto :goto_18

    .line 979
    :cond_33
    const/4 v6, 0x0

    .line 980
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 981
    .line 982
    .line 983
    goto/16 :goto_22

    .line 984
    .line 985
    :goto_18
    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 986
    .line 987
    .line 988
    goto/16 :goto_22

    .line 989
    .line 990
    :cond_34
    if-eq v6, v12, :cond_36

    .line 991
    .line 992
    if-ne v6, v13, :cond_35

    .line 993
    .line 994
    goto :goto_19

    .line 995
    :cond_35
    const/4 v6, 0x0

    .line 996
    goto :goto_1a

    .line 997
    :cond_36
    :goto_19
    const/4 v6, 0x1

    .line 998
    :goto_1a
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 999
    .line 1000
    .line 1001
    move-result-object v12

    .line 1002
    invoke-virtual {v12}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v12

    .line 1006
    const/high16 v13, 0x80000

    .line 1007
    .line 1008
    if-eqz v12, :cond_3a

    .line 1009
    .line 1010
    if-eqz v6, :cond_38

    .line 1011
    .line 1012
    :cond_37
    const/4 v6, 0x0

    .line 1013
    goto :goto_1c

    .line 1014
    :cond_38
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1015
    .line 1016
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1017
    .line 1018
    and-int/2addr v6, v13

    .line 1019
    if-eqz v6, :cond_39

    .line 1020
    .line 1021
    const/4 v6, 0x1

    .line 1022
    goto :goto_1b

    .line 1023
    :cond_39
    const/4 v6, 0x0

    .line 1024
    :goto_1b
    iget-object v12, v8, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 1025
    .line 1026
    if-eq v1, v12, :cond_37

    .line 1027
    .line 1028
    if-nez v6, :cond_37

    .line 1029
    .line 1030
    const/4 v6, 0x1

    .line 1031
    :cond_3a
    :goto_1c
    const/high16 v12, 0x100000

    .line 1032
    .line 1033
    if-eqz v6, :cond_3e

    .line 1034
    .line 1035
    const/4 v6, 0x1

    .line 1036
    const/4 v7, 0x0

    .line 1037
    invoke-virtual {v1, v7, v6}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v15

    .line 1041
    if-eqz v15, :cond_3d

    .line 1042
    .line 1043
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1044
    .line 1045
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1046
    .line 1047
    .line 1048
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1049
    .line 1050
    and-int v10, v6, v12

    .line 1051
    .line 1052
    if-nez v10, :cond_3c

    .line 1053
    .line 1054
    and-int/2addr v6, v13

    .line 1055
    if-eqz v6, :cond_3b

    .line 1056
    .line 1057
    goto :goto_1d

    .line 1058
    :cond_3b
    const/4 v6, 0x0

    .line 1059
    goto :goto_1e

    .line 1060
    :cond_3c
    :goto_1d
    const/4 v6, 0x1

    .line 1061
    :goto_1e
    if-eqz v6, :cond_3d

    .line 1062
    .line 1063
    const/4 v6, 0x1

    .line 1064
    iput-boolean v6, v8, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 1065
    .line 1066
    :cond_3d
    const/4 v6, 0x1

    .line 1067
    goto :goto_23

    .line 1068
    :cond_3e
    invoke-virtual {v8}, Lcom/android/server/wm/CoverPolicy;->shouldApplyAodPolicy()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v6

    .line 1072
    if-eqz v6, :cond_3f

    .line 1073
    .line 1074
    iget-object v6, v8, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 1075
    .line 1076
    invoke-virtual {v6, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v6

    .line 1080
    goto :goto_1f

    .line 1081
    :cond_3f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    .line 1082
    .line 1083
    .line 1084
    move-result v6

    .line 1085
    :goto_1f
    if-nez v6, :cond_42

    .line 1086
    .line 1087
    const/4 v6, 0x0

    .line 1088
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v15

    .line 1092
    if-eqz v15, :cond_42

    .line 1093
    .line 1094
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1095
    .line 1096
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1097
    .line 1098
    .line 1099
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1100
    .line 1101
    and-int v10, v6, v12

    .line 1102
    .line 1103
    if-nez v10, :cond_41

    .line 1104
    .line 1105
    and-int/2addr v6, v13

    .line 1106
    if-eqz v6, :cond_40

    .line 1107
    .line 1108
    goto :goto_20

    .line 1109
    :cond_40
    const/4 v6, 0x0

    .line 1110
    goto :goto_21

    .line 1111
    :cond_41
    :goto_20
    const/4 v6, 0x1

    .line 1112
    :goto_21
    if-eqz v6, :cond_42

    .line 1113
    .line 1114
    const/4 v6, 0x1

    .line 1115
    iput-boolean v6, v8, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 1116
    .line 1117
    :cond_42
    :goto_22
    const/4 v6, 0x0

    .line 1118
    :goto_23
    if-eqz v6, :cond_43

    .line 1119
    .line 1120
    goto/16 :goto_15

    .line 1121
    .line 1122
    :cond_43
    const/4 v6, 0x0

    .line 1123
    :goto_24
    if-nez v6, :cond_4f

    .line 1124
    .line 1125
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    .line 1126
    .line 1127
    .line 1128
    move-result v6

    .line 1129
    iget-object v8, v2, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1130
    .line 1131
    if-eqz v6, :cond_4d

    .line 1132
    .line 1133
    iget-boolean v6, v11, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1134
    .line 1135
    if-eqz v6, :cond_4a

    .line 1136
    .line 1137
    iget-object v6, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1138
    .line 1139
    check-cast v6, Lcom/android/server/policy/PhoneWindowManager;

    .line 1140
    .line 1141
    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 1142
    .line 1143
    .line 1144
    move-result v6

    .line 1145
    if-nez v6, :cond_44

    .line 1146
    .line 1147
    goto :goto_27

    .line 1148
    :cond_44
    if-eqz v0, :cond_46

    .line 1149
    .line 1150
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v6

    .line 1154
    if-eqz v6, :cond_46

    .line 1155
    .line 1156
    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 1157
    .line 1158
    if-eqz v6, :cond_46

    .line 1159
    .line 1160
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 1161
    .line 1162
    .line 1163
    move-result v6

    .line 1164
    if-nez v6, :cond_45

    .line 1165
    .line 1166
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v0

    .line 1170
    if-nez v0, :cond_46

    .line 1171
    .line 1172
    :cond_45
    const/4 v6, 0x0

    .line 1173
    goto :goto_28

    .line 1174
    :cond_46
    invoke-virtual {v14, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v0

    .line 1178
    if-eqz v0, :cond_47

    .line 1179
    .line 1180
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 1181
    .line 1182
    .line 1183
    move-result v0

    .line 1184
    if-eqz v0, :cond_47

    .line 1185
    .line 1186
    :goto_25
    const/4 v6, 0x1

    .line 1187
    goto :goto_28

    .line 1188
    :cond_47
    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1189
    .line 1190
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1191
    .line 1192
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isKeyguardOccluded()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v0

    .line 1196
    if-eqz v0, :cond_49

    .line 1197
    .line 1198
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 1199
    .line 1200
    .line 1201
    move-result v0

    .line 1202
    if-nez v0, :cond_48

    .line 1203
    .line 1204
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1205
    .line 1206
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1207
    .line 1208
    and-int/lit16 v0, v0, 0x100

    .line 1209
    .line 1210
    if-eqz v0, :cond_49

    .line 1211
    .line 1212
    :cond_48
    const/4 v0, 0x1

    .line 1213
    const/16 v17, 0x1

    .line 1214
    .line 1215
    goto :goto_26

    .line 1216
    :cond_49
    const/4 v0, 0x1

    .line 1217
    const/16 v17, 0x0

    .line 1218
    .line 1219
    :goto_26
    xor-int/lit8 v6, v17, 0x1

    .line 1220
    .line 1221
    goto :goto_28

    .line 1222
    :cond_4a
    :goto_27
    invoke-virtual {v14, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v0

    .line 1226
    if-eqz v0, :cond_45

    .line 1227
    .line 1228
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    if-eqz v0, :cond_45

    .line 1233
    .line 1234
    goto :goto_25

    .line 1235
    :goto_28
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 1236
    .line 1237
    if-eqz v0, :cond_4b

    .line 1238
    .line 1239
    iget-object v0, v11, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 1240
    .line 1241
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0

    .line 1245
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setFrozen(Z)V

    .line 1246
    .line 1247
    .line 1248
    :cond_4b
    if-eqz v6, :cond_4c

    .line 1249
    .line 1250
    const/4 v0, 0x1

    .line 1251
    const/4 v6, 0x0

    .line 1252
    invoke-virtual {v1, v6, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 1253
    .line 1254
    .line 1255
    goto :goto_29

    .line 1256
    :cond_4c
    const/4 v6, 0x0

    .line 1257
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 1258
    .line 1259
    .line 1260
    goto :goto_29

    .line 1261
    :cond_4d
    invoke-virtual {v14, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v0

    .line 1265
    if-eqz v0, :cond_4f

    .line 1266
    .line 1267
    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1268
    .line 1269
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 1270
    .line 1271
    iget v6, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1272
    .line 1273
    invoke-virtual {v0, v6}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    iget-boolean v0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 1278
    .line 1279
    if-eqz v0, :cond_4e

    .line 1280
    .line 1281
    const/4 v0, 0x1

    .line 1282
    const/4 v6, 0x0

    .line 1283
    invoke-virtual {v1, v6, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 1284
    .line 1285
    .line 1286
    goto :goto_29

    .line 1287
    :cond_4e
    const/4 v6, 0x0

    .line 1288
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 1289
    .line 1290
    .line 1291
    :cond_4f
    :goto_29
    iget-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1292
    .line 1293
    if-nez v0, :cond_51

    .line 1294
    .line 1295
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 1296
    .line 1297
    .line 1298
    move-result v0

    .line 1299
    if-eqz v0, :cond_51

    .line 1300
    .line 1301
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1302
    .line 1303
    if-eqz v0, :cond_51

    .line 1304
    .line 1305
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v0

    .line 1309
    if-eqz v0, :cond_50

    .line 1310
    .line 1311
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-nez v0, :cond_51

    .line 1320
    .line 1321
    :cond_50
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v0

    .line 1325
    if-eqz v0, :cond_51

    .line 1326
    .line 1327
    const/4 v0, 0x1

    .line 1328
    iput-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1329
    .line 1330
    :cond_51
    iget-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 1331
    .line 1332
    if-nez v0, :cond_52

    .line 1333
    .line 1334
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1335
    .line 1336
    if-eqz v0, :cond_52

    .line 1337
    .line 1338
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v0

    .line 1342
    if-eqz v0, :cond_52

    .line 1343
    .line 1344
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    if-eqz v0, :cond_52

    .line 1349
    .line 1350
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 1355
    .line 1356
    .line 1357
    move-result v0

    .line 1358
    if-nez v0, :cond_52

    .line 1359
    .line 1360
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v0

    .line 1364
    if-eqz v0, :cond_52

    .line 1365
    .line 1366
    const/4 v0, 0x1

    .line 1367
    iput-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 1368
    .line 1369
    :cond_52
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 1370
    .line 1371
    if-eqz v0, :cond_53

    .line 1372
    .line 1373
    const/4 v0, 0x1

    .line 1374
    goto :goto_2a

    .line 1375
    :cond_53
    const/4 v0, 0x0

    .line 1376
    :goto_2a
    if-eqz v0, :cond_5a

    .line 1377
    .line 1378
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v6

    .line 1386
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1387
    .line 1388
    .line 1389
    move-result v8

    .line 1390
    const/4 v10, 0x1

    .line 1391
    sub-int/2addr v8, v10

    .line 1392
    :goto_2b
    if-ltz v8, :cond_5a

    .line 1393
    .line 1394
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v10

    .line 1398
    check-cast v10, Lcom/android/server/wm/InsetsSourceProvider;

    .line 1399
    .line 1400
    iget-object v10, v10, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 1401
    .line 1402
    invoke-virtual {v10}, Landroid/view/InsetsSource;->getType()I

    .line 1403
    .line 1404
    .line 1405
    move-result v12

    .line 1406
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 1407
    .line 1408
    .line 1409
    move-result v13

    .line 1410
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    .line 1411
    .line 1412
    .line 1413
    move-result v14

    .line 1414
    or-int/2addr v13, v14

    .line 1415
    and-int/2addr v12, v13

    .line 1416
    if-nez v12, :cond_54

    .line 1417
    .line 1418
    goto :goto_2c

    .line 1419
    :cond_54
    iget-object v12, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1420
    .line 1421
    if-eqz v12, :cond_55

    .line 1422
    .line 1423
    iget-object v12, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1424
    .line 1425
    if-eqz v12, :cond_55

    .line 1426
    .line 1427
    iget-object v12, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1428
    .line 1429
    if-eqz v12, :cond_55

    .line 1430
    .line 1431
    iget-object v12, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 1432
    .line 1433
    if-eqz v12, :cond_55

    .line 1434
    .line 1435
    goto :goto_2c

    .line 1436
    :cond_55
    const/4 v7, 0x0

    .line 1437
    invoke-virtual {v10, v6, v7}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v10

    .line 1441
    iget-object v12, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1442
    .line 1443
    if-nez v12, :cond_56

    .line 1444
    .line 1445
    iget v12, v10, Landroid/graphics/Insets;->left:I

    .line 1446
    .line 1447
    if-lez v12, :cond_56

    .line 1448
    .line 1449
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1450
    .line 1451
    :cond_56
    iget-object v12, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1452
    .line 1453
    if-nez v12, :cond_57

    .line 1454
    .line 1455
    iget v12, v10, Landroid/graphics/Insets;->top:I

    .line 1456
    .line 1457
    if-lez v12, :cond_57

    .line 1458
    .line 1459
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1460
    .line 1461
    :cond_57
    iget-object v12, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1462
    .line 1463
    if-nez v12, :cond_58

    .line 1464
    .line 1465
    iget v12, v10, Landroid/graphics/Insets;->right:I

    .line 1466
    .line 1467
    if-lez v12, :cond_58

    .line 1468
    .line 1469
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1470
    .line 1471
    :cond_58
    iget-object v12, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 1472
    .line 1473
    if-nez v12, :cond_59

    .line 1474
    .line 1475
    iget v10, v10, Landroid/graphics/Insets;->bottom:I

    .line 1476
    .line 1477
    if-lez v10, :cond_59

    .line 1478
    .line 1479
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 1480
    .line 1481
    :cond_59
    :goto_2c
    add-int/lit8 v8, v8, -0x1

    .line 1482
    .line 1483
    goto :goto_2b

    .line 1484
    :cond_5a
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 1485
    .line 1486
    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanForceShowingInsets:Z

    .line 1487
    .line 1488
    if-eqz v0, :cond_5b

    .line 1489
    .line 1490
    iget v0, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 1491
    .line 1492
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1493
    .line 1494
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    .line 1495
    .line 1496
    or-int/2addr v0, v6

    .line 1497
    iput v0, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 1498
    .line 1499
    :cond_5b
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 1500
    .line 1501
    iget-boolean v6, v2, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    .line 1502
    .line 1503
    if-eq v0, v6, :cond_5f

    .line 1504
    .line 1505
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 1506
    .line 1507
    iget-object v0, v11, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1508
    .line 1509
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1510
    .line 1511
    if-eqz v6, :cond_5d

    .line 1512
    .line 1513
    :cond_5c
    const/4 v6, 0x0

    .line 1514
    goto :goto_2e

    .line 1515
    :cond_5d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    .line 1516
    .line 1517
    .line 1518
    move-result v6

    .line 1519
    if-eqz v6, :cond_5e

    .line 1520
    .line 1521
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 1522
    .line 1523
    .line 1524
    move-result v6

    .line 1525
    goto :goto_2d

    .line 1526
    :cond_5e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1527
    .line 1528
    .line 1529
    move-result v6

    .line 1530
    :goto_2d
    if-eqz v6, :cond_5c

    .line 1531
    .line 1532
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    .line 1533
    .line 1534
    if-nez v6, :cond_5c

    .line 1535
    .line 1536
    const/4 v6, 0x1

    .line 1537
    :goto_2e
    if-eqz v6, :cond_5f

    .line 1538
    .line 1539
    if-eqz v0, :cond_5f

    .line 1540
    .line 1541
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1542
    .line 1543
    .line 1544
    move-result v0

    .line 1545
    if-eqz v0, :cond_5f

    .line 1546
    .line 1547
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 1548
    .line 1549
    .line 1550
    :cond_5f
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1551
    .line 1552
    const/high16 v6, 0x2000000

    .line 1553
    .line 1554
    and-int/2addr v0, v6

    .line 1555
    if-eqz v0, :cond_60

    .line 1556
    .line 1557
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1558
    .line 1559
    .line 1560
    move-result v0

    .line 1561
    if-eqz v0, :cond_60

    .line 1562
    .line 1563
    const/4 v0, 0x1

    .line 1564
    iput-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    .line 1565
    .line 1566
    goto :goto_2f

    .line 1567
    :cond_60
    const/4 v0, 0x1

    .line 1568
    :goto_2f
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1569
    .line 1570
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 1571
    .line 1572
    and-int/lit8 v6, v6, 0x40

    .line 1573
    .line 1574
    if-eqz v6, :cond_61

    .line 1575
    .line 1576
    iput-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    .line 1577
    .line 1578
    :cond_61
    if-nez v5, :cond_62

    .line 1579
    .line 1580
    goto/16 :goto_40

    .line 1581
    .line 1582
    :cond_62
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1583
    .line 1584
    if-lt v5, v0, :cond_63

    .line 1585
    .line 1586
    const/16 v0, 0x7d0

    .line 1587
    .line 1588
    if-ge v5, v0, :cond_63

    .line 1589
    .line 1590
    const/4 v0, 0x1

    .line 1591
    goto :goto_30

    .line 1592
    :cond_63
    const/4 v0, 0x0

    .line 1593
    :goto_30
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1594
    .line 1595
    if-nez v5, :cond_68

    .line 1596
    .line 1597
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1598
    .line 1599
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1600
    .line 1601
    if-eqz v6, :cond_64

    .line 1602
    .line 1603
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 1604
    .line 1605
    .line 1606
    move-result v6

    .line 1607
    const/4 v8, 0x5

    .line 1608
    if-ne v6, v8, :cond_64

    .line 1609
    .line 1610
    const/4 v6, 0x1

    .line 1611
    goto :goto_31

    .line 1612
    :cond_64
    const/4 v6, 0x0

    .line 1613
    :goto_31
    if-eqz v6, :cond_67

    .line 1614
    .line 1615
    iget-boolean v6, v2, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 1616
    .line 1617
    if-eqz v6, :cond_66

    .line 1618
    .line 1619
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1620
    .line 1621
    .line 1622
    move-result v6

    .line 1623
    if-eqz v6, :cond_67

    .line 1624
    .line 1625
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1626
    .line 1627
    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1628
    .line 1629
    const/4 v8, 0x4

    .line 1630
    if-ne v6, v8, :cond_65

    .line 1631
    .line 1632
    const/4 v6, 0x1

    .line 1633
    goto :goto_32

    .line 1634
    :cond_65
    const/4 v6, 0x0

    .line 1635
    :goto_32
    if-eqz v6, :cond_67

    .line 1636
    .line 1637
    :cond_66
    const/4 v6, 0x1

    .line 1638
    goto :goto_33

    .line 1639
    :cond_67
    const/4 v6, 0x1

    .line 1640
    goto :goto_34

    .line 1641
    :goto_33
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 1642
    .line 1643
    move v0, v6

    .line 1644
    :goto_34
    if-eqz v0, :cond_68

    .line 1645
    .line 1646
    if-nez v4, :cond_68

    .line 1647
    .line 1648
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 1649
    .line 1650
    .line 1651
    move-result v8

    .line 1652
    if-eqz v8, :cond_68

    .line 1653
    .line 1654
    and-int/2addr v5, v6

    .line 1655
    if-eqz v5, :cond_68

    .line 1656
    .line 1657
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 1658
    .line 1659
    :cond_68
    if-eqz v0, :cond_69

    .line 1660
    .line 1661
    if-nez v4, :cond_69

    .line 1662
    .line 1663
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 1664
    .line 1665
    .line 1666
    move-result v5

    .line 1667
    if-nez v5, :cond_6a

    .line 1668
    .line 1669
    :cond_69
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1670
    .line 1671
    const/16 v6, 0x7ef

    .line 1672
    .line 1673
    if-ne v5, v6, :cond_77

    .line 1674
    .line 1675
    :cond_6a
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1676
    .line 1677
    const/4 v3, 0x3

    .line 1678
    if-ne v0, v3, :cond_6b

    .line 1679
    .line 1680
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 1681
    .line 1682
    if-eqz v0, :cond_6b

    .line 1683
    .line 1684
    const/4 v0, 0x1

    .line 1685
    goto :goto_35

    .line 1686
    :cond_6b
    const/4 v0, 0x0

    .line 1687
    :goto_35
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1688
    .line 1689
    if-nez v3, :cond_6d

    .line 1690
    .line 1691
    if-nez v0, :cond_6d

    .line 1692
    .line 1693
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    if-nez v0, :cond_6d

    .line 1698
    .line 1699
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v0

    .line 1703
    if-eqz v0, :cond_6c

    .line 1704
    .line 1705
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v0

    .line 1709
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 1710
    .line 1711
    .line 1712
    move-result v0

    .line 1713
    const/4 v3, 0x6

    .line 1714
    if-ne v0, v3, :cond_6c

    .line 1715
    .line 1716
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v0

    .line 1720
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1721
    .line 1722
    .line 1723
    move-result v0

    .line 1724
    if-nez v0, :cond_6c

    .line 1725
    .line 1726
    const/4 v0, 0x1

    .line 1727
    goto :goto_36

    .line 1728
    :cond_6c
    const/4 v0, 0x0

    .line 1729
    :goto_36
    if-nez v0, :cond_6d

    .line 1730
    .line 1731
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1732
    .line 1733
    :cond_6d
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1734
    .line 1735
    if-eqz v0, :cond_70

    .line 1736
    .line 1737
    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 1738
    .line 1739
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1740
    .line 1741
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1742
    .line 1743
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1744
    .line 1745
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1746
    .line 1747
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 1748
    .line 1749
    .line 1750
    move-result v0

    .line 1751
    if-eqz v0, :cond_70

    .line 1752
    .line 1753
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 1754
    .line 1755
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 1756
    .line 1757
    .line 1758
    move-result v0

    .line 1759
    if-nez v0, :cond_70

    .line 1760
    .line 1761
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v0

    .line 1765
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 1766
    .line 1767
    .line 1768
    move-result v0

    .line 1769
    if-eqz v0, :cond_6e

    .line 1770
    .line 1771
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1772
    .line 1773
    .line 1774
    move-result v0

    .line 1775
    if-nez v0, :cond_6e

    .line 1776
    .line 1777
    const/4 v13, 0x0

    .line 1778
    goto :goto_37

    .line 1779
    :cond_6e
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 1780
    .line 1781
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    .line 1783
    .line 1784
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 1785
    .line 1786
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1787
    .line 1788
    .line 1789
    const/4 v13, 0x1

    .line 1790
    :goto_37
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 1791
    .line 1792
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 1793
    .line 1794
    .line 1795
    move-result v0

    .line 1796
    if-nez v0, :cond_70

    .line 1797
    .line 1798
    if-eqz v13, :cond_70

    .line 1799
    .line 1800
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1801
    .line 1802
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 1803
    .line 1804
    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 1805
    .line 1806
    and-int/lit8 v0, v0, 0x8

    .line 1807
    .line 1808
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    .line 1809
    .line 1810
    if-eqz v4, :cond_6f

    .line 1811
    .line 1812
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1813
    .line 1814
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1815
    .line 1816
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 1817
    .line 1818
    .line 1819
    move-result v4

    .line 1820
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1821
    .line 1822
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1823
    .line 1824
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1825
    .line 1826
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 1827
    .line 1828
    .line 1829
    move-result v5

    .line 1830
    :cond_6f
    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 1831
    .line 1832
    new-instance v5, Lcom/android/internal/view/AppearanceRegion;

    .line 1833
    .line 1834
    new-instance v6, Landroid/graphics/Rect;

    .line 1835
    .line 1836
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1837
    .line 1838
    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1839
    .line 1840
    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1841
    .line 1842
    .line 1843
    invoke-direct {v5, v0, v6}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    .line 1848
    .line 1849
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 1850
    .line 1851
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1852
    .line 1853
    .line 1854
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1855
    .line 1856
    if-eqz v0, :cond_70

    .line 1857
    .line 1858
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 1859
    .line 1860
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1861
    .line 1862
    .line 1863
    :cond_70
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 1864
    .line 1865
    .line 1866
    move-result v0

    .line 1867
    if-eqz v0, :cond_72

    .line 1868
    .line 1869
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1870
    .line 1871
    if-nez v0, :cond_71

    .line 1872
    .line 1873
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1874
    .line 1875
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1876
    .line 1877
    if-eqz v0, :cond_71

    .line 1878
    .line 1879
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 1880
    .line 1881
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1882
    .line 1883
    .line 1884
    :cond_71
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1885
    .line 1886
    if-nez v0, :cond_72

    .line 1887
    .line 1888
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1889
    .line 1890
    :cond_72
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1891
    .line 1892
    if-eqz v0, :cond_83

    .line 1893
    .line 1894
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1895
    .line 1896
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 1897
    .line 1898
    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 1899
    .line 1900
    iget-object v1, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 1901
    .line 1902
    iget-object v1, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1903
    .line 1904
    const/4 v3, 0x1

    .line 1905
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v1

    .line 1909
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 1910
    .line 1911
    .line 1912
    move-result v3

    .line 1913
    if-eqz v3, :cond_76

    .line 1914
    .line 1915
    if-eqz v1, :cond_76

    .line 1916
    .line 1917
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    .line 1918
    .line 1919
    .line 1920
    move-result v3

    .line 1921
    if-eqz v3, :cond_73

    .line 1922
    .line 1923
    goto :goto_39

    .line 1924
    :cond_73
    new-instance v3, Landroid/graphics/Rect;

    .line 1925
    .line 1926
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1927
    .line 1928
    .line 1929
    new-instance v4, Landroid/graphics/Rect;

    .line 1930
    .line 1931
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1932
    .line 1933
    .line 1934
    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 1938
    .line 1939
    .line 1940
    move-result v5

    .line 1941
    if-eqz v5, :cond_74

    .line 1942
    .line 1943
    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 1944
    .line 1945
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 1946
    .line 1947
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1948
    .line 1949
    .line 1950
    goto :goto_38

    .line 1951
    :cond_74
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1952
    .line 1953
    .line 1954
    :goto_38
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 1955
    .line 1956
    .line 1957
    move-result v0

    .line 1958
    if-nez v0, :cond_76

    .line 1959
    .line 1960
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 1961
    .line 1962
    .line 1963
    move-result v0

    .line 1964
    if-eqz v0, :cond_75

    .line 1965
    .line 1966
    goto :goto_39

    .line 1967
    :cond_75
    new-instance v9, Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1968
    .line 1969
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1970
    .line 1971
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 1972
    .line 1973
    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 1974
    .line 1975
    invoke-direct {v9, v3, v4, v0}, Lcom/android/internal/statusbar/LetterboxDetails;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1976
    .line 1977
    .line 1978
    goto :goto_3a

    .line 1979
    :cond_76
    :goto_39
    const/4 v9, 0x0

    .line 1980
    :goto_3a
    if-eqz v9, :cond_83

    .line 1981
    .line 1982
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 1983
    .line 1984
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    .line 1986
    .line 1987
    goto/16 :goto_40

    .line 1988
    .line 1989
    :cond_77
    const/4 v3, 0x1

    .line 1990
    iget-boolean v5, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 1991
    .line 1992
    if-eqz v5, :cond_80

    .line 1993
    .line 1994
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1995
    .line 1996
    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    .line 1997
    .line 1998
    .line 1999
    move-result v5

    .line 2000
    if-eqz v5, :cond_78

    .line 2001
    .line 2002
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2003
    .line 2004
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2005
    .line 2006
    const/high16 v6, 0x400000

    .line 2007
    .line 2008
    and-int/2addr v5, v6

    .line 2009
    if-eqz v5, :cond_78

    .line 2010
    .line 2011
    move v5, v3

    .line 2012
    goto :goto_3b

    .line 2013
    :cond_78
    const/4 v5, 0x0

    .line 2014
    :goto_3b
    if-nez v5, :cond_80

    .line 2015
    .line 2016
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2017
    .line 2018
    if-eqz v0, :cond_7f

    .line 2019
    .line 2020
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2021
    .line 2022
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    .line 2023
    .line 2024
    .line 2025
    move-result v0

    .line 2026
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2027
    .line 2028
    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    .line 2029
    .line 2030
    .line 2031
    move-result v4

    .line 2032
    if-ge v4, v0, :cond_7f

    .line 2033
    .line 2034
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2035
    .line 2036
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 2037
    .line 2038
    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 2039
    .line 2040
    and-int/lit8 v0, v0, 0x8

    .line 2041
    .line 2042
    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2043
    .line 2044
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 2045
    .line 2046
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2047
    .line 2048
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 2049
    .line 2050
    .line 2051
    move-result-object v5

    .line 2052
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 2053
    .line 2054
    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2055
    .line 2056
    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 2057
    .line 2058
    invoke-virtual {v8, v5, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2059
    .line 2060
    .line 2061
    move-result v9

    .line 2062
    if-nez v9, :cond_79

    .line 2063
    .line 2064
    :goto_3c
    const/4 v10, 0x0

    .line 2065
    goto/16 :goto_3f

    .line 2066
    .line 2067
    :cond_79
    iget-object v9, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 2068
    .line 2069
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 2070
    .line 2071
    .line 2072
    move-result v9

    .line 2073
    if-eqz v9, :cond_7a

    .line 2074
    .line 2075
    goto :goto_3c

    .line 2076
    :cond_7a
    if-eqz v0, :cond_7e

    .line 2077
    .line 2078
    sget-object v9, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 2079
    .line 2080
    invoke-virtual {v9, v6, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2081
    .line 2082
    .line 2083
    move-result v4

    .line 2084
    if-nez v4, :cond_7b

    .line 2085
    .line 2086
    goto :goto_3e

    .line 2087
    :cond_7b
    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2088
    .line 2089
    new-instance v10, Lcom/android/internal/view/AppearanceRegion;

    .line 2090
    .line 2091
    new-instance v11, Landroid/graphics/Rect;

    .line 2092
    .line 2093
    invoke-direct {v11, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2094
    .line 2095
    .line 2096
    invoke-direct {v10, v0, v11}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 2097
    .line 2098
    .line 2099
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 2103
    .line 2104
    .line 2105
    move-result v0

    .line 2106
    if-nez v0, :cond_7d

    .line 2107
    .line 2108
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 2109
    .line 2110
    .line 2111
    move-result v0

    .line 2112
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 2113
    .line 2114
    .line 2115
    move-result v4

    .line 2116
    if-ne v0, v4, :cond_7d

    .line 2117
    .line 2118
    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2119
    .line 2120
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 2121
    .line 2122
    if-eq v0, v4, :cond_7c

    .line 2123
    .line 2124
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2125
    .line 2126
    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    .line 2127
    .line 2128
    new-instance v6, Landroid/graphics/Rect;

    .line 2129
    .line 2130
    iget v10, v5, Landroid/graphics/Rect;->left:I

    .line 2131
    .line 2132
    iget v11, v5, Landroid/graphics/Rect;->top:I

    .line 2133
    .line 2134
    iget v12, v9, Landroid/graphics/Rect;->left:I

    .line 2135
    .line 2136
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    .line 2137
    .line 2138
    invoke-direct {v6, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2139
    .line 2140
    .line 2141
    const/4 v7, 0x0

    .line 2142
    invoke-direct {v4, v7, v6}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 2143
    .line 2144
    .line 2145
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2146
    .line 2147
    .line 2148
    :cond_7c
    iget v0, v8, Landroid/graphics/Rect;->right:I

    .line 2149
    .line 2150
    iget v4, v9, Landroid/graphics/Rect;->right:I

    .line 2151
    .line 2152
    if-eq v0, v4, :cond_7d

    .line 2153
    .line 2154
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2155
    .line 2156
    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    .line 2157
    .line 2158
    new-instance v6, Landroid/graphics/Rect;

    .line 2159
    .line 2160
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 2161
    .line 2162
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 2163
    .line 2164
    iget v11, v5, Landroid/graphics/Rect;->right:I

    .line 2165
    .line 2166
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 2167
    .line 2168
    invoke-direct {v6, v9, v10, v11, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2169
    .line 2170
    .line 2171
    const/4 v5, 0x0

    .line 2172
    invoke-direct {v4, v5, v6}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 2173
    .line 2174
    .line 2175
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    .line 2177
    .line 2178
    :cond_7d
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 2179
    .line 2180
    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2181
    .line 2182
    .line 2183
    :goto_3d
    move v10, v3

    .line 2184
    goto :goto_3f

    .line 2185
    :cond_7e
    :goto_3e
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2186
    .line 2187
    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    .line 2188
    .line 2189
    new-instance v6, Landroid/graphics/Rect;

    .line 2190
    .line 2191
    invoke-direct {v6, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2192
    .line 2193
    .line 2194
    const/4 v5, 0x0

    .line 2195
    invoke-direct {v4, v5, v6}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 2196
    .line 2197
    .line 2198
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    .line 2200
    .line 2201
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 2202
    .line 2203
    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2204
    .line 2205
    .line 2206
    goto :goto_3d

    .line 2207
    :goto_3f
    if-eqz v10, :cond_7f

    .line 2208
    .line 2209
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2210
    .line 2211
    if-eqz v0, :cond_7f

    .line 2212
    .line 2213
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 2214
    .line 2215
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2216
    .line 2217
    .line 2218
    :cond_7f
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 2219
    .line 2220
    .line 2221
    move-result v0

    .line 2222
    if-eqz v0, :cond_83

    .line 2223
    .line 2224
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2225
    .line 2226
    if-nez v0, :cond_83

    .line 2227
    .line 2228
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2229
    .line 2230
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2231
    .line 2232
    if-eqz v0, :cond_83

    .line 2233
    .line 2234
    iget-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 2235
    .line 2236
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2237
    .line 2238
    .line 2239
    goto :goto_40

    .line 2240
    :cond_80
    if-eqz v0, :cond_83

    .line 2241
    .line 2242
    if-nez v4, :cond_83

    .line 2243
    .line 2244
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2245
    .line 2246
    if-eqz v0, :cond_81

    .line 2247
    .line 2248
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2249
    .line 2250
    if-nez v0, :cond_83

    .line 2251
    .line 2252
    :cond_81
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 2253
    .line 2254
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2255
    .line 2256
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 2257
    .line 2258
    .line 2259
    move-result v3

    .line 2260
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v3

    .line 2264
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 2265
    .line 2266
    .line 2267
    move-result v0

    .line 2268
    if-eqz v0, :cond_83

    .line 2269
    .line 2270
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2271
    .line 2272
    if-nez v0, :cond_82

    .line 2273
    .line 2274
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2275
    .line 2276
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2277
    .line 2278
    if-eqz v0, :cond_82

    .line 2279
    .line 2280
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 2281
    .line 2282
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2283
    .line 2284
    .line 2285
    :cond_82
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2286
    .line 2287
    if-nez v0, :cond_83

    .line 2288
    .line 2289
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2290
    .line 2291
    :cond_83
    :goto_40
    return-void

    .line 2292
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2293
    .line 2294
    move-object/from16 v1, p1

    .line 2295
    .line 2296
    check-cast v1, Lcom/android/server/wm/AccessibilityController;

    .line 2297
    .line 2298
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2299
    .line 2300
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2301
    .line 2302
    const-wide/16 v3, 0x400

    .line 2303
    .line 2304
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 2305
    .line 2306
    .line 2307
    move-result v2

    .line 2308
    if-eqz v2, :cond_84

    .line 2309
    .line 2310
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2311
    .line 2312
    const-string v5, "AccessibilityController.onWindowFocusChangedNot"

    .line 2313
    .line 2314
    const-string v6, "displayId="

    .line 2315
    .line 2316
    invoke-static {v0, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v6

    .line 2320
    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2321
    .line 2322
    .line 2323
    :cond_84
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2324
    .line 2325
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2326
    .line 2327
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2328
    .line 2329
    .line 2330
    monitor-enter v2

    .line 2331
    :try_start_0
    iget-object v3, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 2332
    .line 2333
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v0

    .line 2337
    check-cast v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 2338
    .line 2339
    if-eqz v0, :cond_85

    .line 2340
    .line 2341
    goto :goto_41

    .line 2342
    :cond_85
    const/4 v0, 0x0

    .line 2343
    :goto_41
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2344
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2345
    .line 2346
    .line 2347
    if-eqz v0, :cond_86

    .line 2348
    .line 2349
    const/4 v2, 0x0

    .line 2350
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    .line 2351
    .line 2352
    .line 2353
    :cond_86
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2354
    .line 2355
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2356
    .line 2357
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2358
    .line 2359
    .line 2360
    monitor-enter v3

    .line 2361
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 2362
    .line 2363
    if-eqz v0, :cond_87

    .line 2364
    .line 2365
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2366
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2367
    .line 2368
    .line 2369
    goto :goto_44

    .line 2370
    :catchall_0
    move-exception v0

    .line 2371
    goto :goto_45

    .line 2372
    :cond_87
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2373
    .line 2374
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 2375
    .line 2376
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2377
    .line 2378
    .line 2379
    move-result-object v0

    .line 2380
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 2381
    .line 2382
    if-nez v0, :cond_88

    .line 2383
    .line 2384
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2385
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2386
    .line 2387
    .line 2388
    goto :goto_44

    .line 2389
    :cond_88
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    .line 2390
    .line 2391
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2392
    .line 2393
    .line 2394
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 2395
    .line 2396
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 2397
    .line 2398
    .line 2399
    move-result v2

    .line 2400
    const/4 v4, 0x1

    .line 2401
    sub-int/2addr v2, v4

    .line 2402
    :goto_42
    if-ltz v2, :cond_8a

    .line 2403
    .line 2404
    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 2405
    .line 2406
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 2407
    .line 2408
    .line 2409
    move-result-object v5

    .line 2410
    check-cast v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 2411
    .line 2412
    iget-boolean v6, v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    .line 2413
    .line 2414
    if-nez v6, :cond_89

    .line 2415
    .line 2416
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    .line 2418
    .line 2419
    :cond_89
    add-int/lit8 v2, v2, -0x1

    .line 2420
    .line 2421
    goto :goto_42

    .line 2422
    :cond_8a
    iput-boolean v4, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 2423
    .line 2424
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2425
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2426
    .line 2427
    .line 2428
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2429
    .line 2430
    .line 2431
    move-result v2

    .line 2432
    sub-int/2addr v2, v4

    .line 2433
    move v3, v4

    .line 2434
    :goto_43
    if-ltz v2, :cond_8b

    .line 2435
    .line 2436
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2437
    .line 2438
    .line 2439
    move-result-object v5

    .line 2440
    check-cast v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 2441
    .line 2442
    invoke-virtual {v5, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    .line 2443
    .line 2444
    .line 2445
    iget-boolean v5, v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    .line 2446
    .line 2447
    and-int/2addr v3, v5

    .line 2448
    add-int/lit8 v2, v2, -0x1

    .line 2449
    .line 2450
    goto :goto_43

    .line 2451
    :cond_8b
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2452
    .line 2453
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2454
    .line 2455
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2456
    .line 2457
    .line 2458
    monitor-enter v2

    .line 2459
    :try_start_4
    iget-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 2460
    .line 2461
    and-int/2addr v0, v3

    .line 2462
    iput-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 2463
    .line 2464
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2465
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2466
    .line 2467
    .line 2468
    :goto_44
    return-void

    .line 2469
    :catchall_1
    move-exception v0

    .line 2470
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2471
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2472
    .line 2473
    .line 2474
    throw v0

    .line 2475
    :goto_45
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2476
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2477
    .line 2478
    .line 2479
    throw v0

    .line 2480
    :catchall_2
    move-exception v0

    .line 2481
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2482
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2483
    .line 2484
    .line 2485
    throw v0

    .line 2486
    nop

    .line 2487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2488
    .line 2489
    .line 2490
    .line 2491
    .line 2492
    .line 2493
    .line 2494
    .line 2495
    .line 2496
    .line 2497
    .line 2498
    .line 2499
    .line 2500
    .line 2501
    .line 2502
    .line 2503
    .line 2504
    .line 2505
    .line 2506
    .line 2507
    .line 2508
    .line 2509
    .line 2510
    .line 2511
    .line 2512
    .line 2513
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
