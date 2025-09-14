.class public abstract Lcom/android/server/wm/AbsAppSnapshotController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I


# instance fields
.field public mCache:Lcom/android/server/wm/SnapshotCache;

.field public mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

.field public final mHighResSnapshotScale:F

.field public final mIsRunningOnIoT:Z

.field public final mIsRunningOnTv:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSnapshotEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "android.software.leanback"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnTv:Z

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "android.hardware.type.embedded"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnIoT:Z

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->initSnapshotScale()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 39
    .line 40
    return-void
.end method

.method public static validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Invalid snapshot dimensions "

    .line 25
    .line 26
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "x"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, "WindowManager"

    .line 54
    .line 55
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method


# virtual methods
.method public captureSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/window/TaskSnapshot;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 8
    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq v1, v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    return-object v4

    .line 21
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-nez v5, :cond_3

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-virtual {v10}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const/16 v7, 0xff

    .line 46
    .line 47
    invoke-static {v6, v7}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    iget-object v14, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 54
    .line 55
    .line 56
    move-result-object v15

    .line 57
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    const/4 v11, 0x0

    .line 66
    if-nez v6, :cond_4

    .line 67
    .line 68
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 69
    .line 70
    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBarsWithoutCaptionBar()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-virtual {v12, v6, v7, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :goto_0
    move-object v9, v6

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 87
    .line 88
    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-virtual {v12, v6, v7, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v6}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    goto :goto_0

    .line 103
    :goto_1
    new-instance v8, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    .line 104
    .line 105
    iget v7, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    .line 107
    iget v6, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 108
    .line 109
    iget-object v11, v14, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 110
    .line 111
    iget v11, v11, Landroid/view/InsetsFlags;->appearance:I

    .line 112
    .line 113
    iget v3, v5, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 114
    .line 115
    iget v4, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 116
    .line 117
    move/from16 v16, v6

    .line 118
    .line 119
    move-object v6, v8

    .line 120
    move-object/from16 v17, v14

    .line 121
    .line 122
    move-object v14, v8

    .line 123
    move/from16 v8, v16

    .line 124
    .line 125
    move-object/from16 v16, v5

    .line 126
    .line 127
    move-object v5, v9

    .line 128
    move v9, v11

    .line 129
    const/4 v0, 0x0

    .line 130
    move v11, v4

    .line 131
    move-object v4, v12

    .line 132
    move v12, v3

    .line 133
    invoke-direct/range {v6 .. v12}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FI)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    int-to-float v7, v3

    .line 145
    mul-float/2addr v7, v2

    .line 146
    float-to-int v7, v7

    .line 147
    int-to-float v8, v6

    .line 148
    mul-float/2addr v8, v2

    .line 149
    float-to-int v2, v8

    .line 150
    const-string v8, "SnapshotController"

    .line 151
    .line 152
    const/4 v9, 0x0

    .line 153
    invoke-static {v8, v9}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v8, v0, v0, v7, v2}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v0}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v7, v2}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, v13}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v14, v5}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v14, v0, v9}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v0}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v8, v7, v2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-nez v0, :cond_5

    .line 184
    .line 185
    move-object v4, v9

    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    .line 189
    .line 190
    invoke-direct {v2, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 191
    .line 192
    .line 193
    move-object/from16 v5, p0

    .line 194
    .line 195
    invoke-virtual {v5, v1}, Lcom/android/server/wm/AbsAppSnapshotController;->getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-static {v2, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 200
    .line 201
    .line 202
    move-object/from16 v7, v16

    .line 203
    .line 204
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 205
    .line 206
    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 207
    .line 208
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    const/4 v10, 0x1

    .line 213
    invoke-virtual {v4, v8, v9, v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 218
    .line 219
    .line 220
    move-result-object v37

    .line 221
    new-instance v4, Landroid/window/TaskSnapshot;

    .line 222
    .line 223
    move-object/from16 v18, v4

    .line 224
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 226
    .line 227
    .line 228
    move-result-wide v19

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 230
    .line 231
    .line 232
    move-result-wide v21

    .line 233
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 234
    .line 235
    move-object/from16 v23, v1

    .line 236
    .line 237
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 238
    .line 239
    .line 240
    move-result-object v24

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 242
    .line 243
    .line 244
    move-result-object v25

    .line 245
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 250
    .line 251
    move/from16 v26, v0

    .line 252
    .line 253
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 258
    .line 259
    .line 260
    move-result v27

    .line 261
    new-instance v0, Landroid/graphics/Point;

    .line 262
    .line 263
    move-object/from16 v28, v0

    .line 264
    .line 265
    invoke-direct {v0, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 266
    .line 267
    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 269
    .line 270
    .line 271
    move-result v33

    .line 272
    move-object/from16 v0, v17

    .line 273
    .line 274
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 275
    .line 276
    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 277
    .line 278
    move/from16 v34, v0

    .line 279
    .line 280
    const/16 v35, 0x0

    .line 281
    .line 282
    const/16 v36, 0x0

    .line 283
    .line 284
    const/16 v31, 0x0

    .line 285
    .line 286
    const/16 v32, 0x0

    .line 287
    .line 288
    move-object/from16 v29, v2

    .line 289
    .line 290
    move-object/from16 v30, v5

    .line 291
    .line 292
    invoke-direct/range {v18 .. v37}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;)V

    .line 293
    .line 294
    .line 295
    invoke-static {v4}, Lcom/android/server/wm/AbsAppSnapshotController;->validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    goto :goto_2

    .line 300
    :cond_6
    move-object v5, v0

    .line 301
    move-object/from16 v0, p1

    .line 302
    .line 303
    invoke-virtual {v5, v0, v2}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    :goto_2
    return-object v4
.end method

.method public final checkIfReadyToSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const-string v2, "WindowManager"

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string p0, "Attempted to take screenshot while display was off."

    .line 25
    .line 26
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "Failed to take screenshot. No visible windows for "

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasCommittedReparentToAnimationLeash()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v0, "Failed to take screenshot. App is animating "

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_3
    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v0, "Failed to take screenshot. No main window for "

    .line 88
    .line 89
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v0, "Skip taking screenshot. App has fixed rotation "

    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_5
    new-instance p1, Landroid/util/Pair;

    .line 128
    .line 129
    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-object p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, " mHighResSnapshotScale="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 11
    .line 12
    const-string v3, " mSnapshotEnabled="

    .line 13
    .line 14
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-boolean v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    .line 19
    .line 20
    invoke-static {v1, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v1, "   "

    .line 29
    .line 30
    const-string v2, "     "

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, " SnapshotCache "

    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/wm/SnapshotCache;->mName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3, v4, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v3

    .line 47
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    add-int/lit8 v4, v4, -0x1

    .line 54
    .line 55
    :goto_0
    if-ltz v4, :cond_0

    .line 56
    .line 57
    iget-object v5, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    .line 64
    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v7, "Entry token="

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v7, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string/jumbo v7, "topApp="

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v7, v5, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    .line 109
    .line 110
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string/jumbo v7, "snapshot="

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v5, v5, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    .line 135
    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v4, v4, -0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    goto :goto_1

    .line 151
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string p0, "MaxSnapshotCache="

    .line 156
    .line 157
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget p0, Lcom/android/server/wm/SnapshotCache;->sMaxSnapshotCache:I

    .line 161
    .line 162
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    throw p0
.end method

.method public abstract findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
.end method

.method public abstract getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
.end method

.method public getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_3

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    new-instance p1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {p1, v2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    :cond_2
    return v0

    .line 41
    :cond_3
    return v1

    .line 42
    :cond_4
    :goto_0
    return v2
.end method

.method public abstract getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
.end method

.method public abstract getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
.end method

.method public initSnapshotScale()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const v0, 0x10500e9

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const v0, 0x3dcccccd    # 0.1f

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public prepareTaskSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot$Builder;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBarsWithoutCaptionBar()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v4, v2, v5, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v4, v2, v5, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AbsAppSnapshotController;->getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v2, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    invoke-virtual {p2, v5}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    invoke-virtual {p2, v6, v7}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v4}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-virtual {v4, v2, v6, v5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setCutoutInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 113
    .line 114
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 115
    .line 116
    const/4 v4, -0x1

    .line 117
    if-eq v2, v4, :cond_2

    .line 118
    .line 119
    move v2, v5

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move v2, v3

    .line 122
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-virtual {p2}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-nez v6, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->use16BitFormat()Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_4

    .line 137
    .line 138
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_4

    .line 143
    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    if-nez v4, :cond_4

    .line 147
    .line 148
    :cond_3
    const/4 v4, 0x4

    .line 149
    move v6, v4

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    move v6, v5

    .line 152
    :cond_5
    :goto_2
    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_7

    .line 157
    .line 158
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_6

    .line 163
    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    :cond_6
    move v2, v5

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    move v2, v3

    .line 169
    :goto_3
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 170
    .line 171
    invoke-virtual {p2, v4}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v6}, Landroid/window/TaskSnapshot$Builder;->setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 185
    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 188
    .line 189
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 190
    .line 191
    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 192
    .line 193
    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    .line 194
    .line 195
    .line 196
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    new-instance v2, Landroid/graphics/Rect;

    .line 209
    .line 210
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 211
    .line 212
    .line 213
    new-instance v4, Landroid/graphics/Point;

    .line 214
    .line 215
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 219
    .line 220
    if-eqz p0, :cond_9

    .line 221
    .line 222
    iget v6, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 223
    .line 224
    if-eq v6, v1, :cond_9

    .line 225
    .line 226
    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 227
    .line 228
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 232
    .line 233
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 234
    .line 235
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 236
    .line 237
    invoke-virtual {v4, v0, p1}, Landroid/graphics/Point;->set(II)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, v6}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-lt p1, p0, :cond_8

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_8
    const/4 v5, 0x2

    .line 259
    :goto_4
    invoke-virtual {p2, v5}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    iget-object p1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 274
    .line 275
    .line 276
    iget-object p1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 277
    .line 278
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    invoke-virtual {v4, v0, p1}, Landroid/graphics/Point;->set(II)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2, v1}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 294
    .line 295
    .line 296
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 297
    .line 298
    invoke-virtual {p2, p0}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 299
    .line 300
    .line 301
    :goto_5
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2, v4}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    .line 305
    .line 306
    .line 307
    return-object v2
.end method

.method public final shouldDisableSnapshots()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnTv:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnIoT:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public final snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Landroid/window/TaskSnapshot$Builder;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AbsAppSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot$Builder;)Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    return-object v4

    .line 18
    :cond_0
    const-wide/16 v5, 0x20

    .line 19
    .line 20
    const-string v7, "createSnapshot"

    .line 21
    .line 22
    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    const-string v8, "WindowManager"

    .line 30
    .line 31
    if-nez v7, :cond_1

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Failed to take screenshot. No surface control for "

    .line 36
    .line 37
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    move-object v0, v4

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    const/4 v10, 0x1

    .line 63
    if-eqz v9, :cond_8

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 70
    .line 71
    const/4 v11, 0x0

    .line 72
    if-eqz v9, :cond_2

    .line 73
    .line 74
    iget-object v12, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 75
    .line 76
    if-eqz v12, :cond_2

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-nez v12, :cond_2

    .line 87
    .line 88
    move v12, v10

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v12, v11

    .line 91
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 96
    .line 97
    iget-object v13, v13, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 98
    .line 99
    if-eqz v13, :cond_3

    .line 100
    .line 101
    move v14, v10

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    move v14, v11

    .line 104
    :goto_2
    if-eqz v12, :cond_4

    .line 105
    .line 106
    iget-object v15, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 107
    .line 108
    if-eqz v15, :cond_4

    .line 109
    .line 110
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_4
    if-eqz v14, :cond_5

    .line 114
    .line 115
    iget-object v13, v13, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 116
    .line 117
    if-eqz v13, :cond_5

    .line 118
    .line 119
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_5
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 123
    .line 124
    if-eqz v13, :cond_6

    .line 125
    .line 126
    instance-of v13, v1, Lcom/android/server/wm/Task;

    .line 127
    .line 128
    if-eqz v13, :cond_6

    .line 129
    .line 130
    iget-object v0, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getExcludeLayers(Lcom/android/server/wm/WindowContainer;)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    .line 138
    .line 139
    :cond_6
    if-nez v12, :cond_7

    .line 140
    .line 141
    if-eqz v9, :cond_7

    .line 142
    .line 143
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    move v11, v10

    .line 150
    :cond_7
    invoke-virtual {v2, v11}, Landroid/window/TaskSnapshot$Builder;->setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;

    .line 151
    .line 152
    .line 153
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    new-array v0, v0, [Landroid/view/SurfaceControl;

    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-nez v9, :cond_9

    .line 164
    .line 165
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v2}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    move/from16 v9, p2

    .line 177
    .line 178
    invoke-static {v1, v3, v9, v7, v0}, Landroid/window/ScreenCapture;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-nez v0, :cond_a

    .line 183
    .line 184
    move-object v1, v4

    .line 185
    goto :goto_3

    .line 186
    :cond_a
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :goto_3
    if-eqz v1, :cond_b

    .line 191
    .line 192
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_b

    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-le v3, v10, :cond_b

    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-gt v3, v10, :cond_c

    .line 209
    .line 210
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v3, "Failed to take screenshot, invalid buffer="

    .line 213
    .line 214
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_c
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 230
    .line 231
    .line 232
    if-nez v0, :cond_d

    .line 233
    .line 234
    return-object v4

    .line 235
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 236
    .line 237
    .line 238
    move-result-wide v3

    .line 239
    invoke-virtual {v2, v3, v4}, Landroid/window/TaskSnapshot$Builder;->setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v2, v1}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v2, v1}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    invoke-virtual {v2, v0}, Landroid/window/TaskSnapshot$Builder;->setContainsSecureLayers(Z)Landroid/window/TaskSnapshot$Builder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/android/server/wm/AbsAppSnapshotController;->validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    return-object v0
.end method

.method public abstract use16BitFormat()Z
.end method
