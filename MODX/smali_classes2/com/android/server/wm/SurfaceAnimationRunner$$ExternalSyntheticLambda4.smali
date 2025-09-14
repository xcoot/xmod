.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

.field public final synthetic f$3:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Landroid/view/SurfaceControl;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v8, v0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 4
    .line 5
    iget-object v9, v0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 8
    .line 9
    iget-object v10, v0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 10
    .line 11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v9}, Landroid/view/SurfaceControl;->isValid()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "SurfaceAnimationRunner"

    .line 21
    .line 22
    const-string v1, "Animation leash is not valid"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v2, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v0, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    iget-object v1, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v1

    .line 39
    :try_start_1
    iget-object v0, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    monitor-exit v1

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v0

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw v0

    .line 53
    :cond_0
    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v11, Landroid/view/SurfaceControl$Transaction;

    .line 58
    .line 59
    invoke-direct {v11}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v12, v0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 65
    .line 66
    new-instance v1, Landroid/view/animation/Transformation;

    .line 67
    .line 68
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Landroid/view/animation/Transformation;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    .line 78
    .line 79
    .line 80
    const/high16 v3, 0x3f800000    # 1.0f

    .line 81
    .line 82
    invoke-virtual {v0, v3, v2}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    iget v0, v13, Landroid/graphics/Insets;->left:I

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    if-gez v0, :cond_1

    .line 109
    .line 110
    new-instance v2, Landroid/graphics/Rect;

    .line 111
    .line 112
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 113
    .line 114
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    add-int/lit8 v3, v0, 0x1

    .line 117
    .line 118
    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    .line 119
    .line 120
    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    .line 122
    .line 123
    new-instance v3, Landroid/graphics/Rect;

    .line 124
    .line 125
    iget v0, v13, Landroid/graphics/Insets;->left:I

    .line 126
    .line 127
    neg-int v0, v0

    .line 128
    invoke-direct {v3, v7, v7, v0, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    .line 130
    .line 131
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    iget v1, v13, Landroid/graphics/Insets;->left:I

    .line 134
    .line 135
    add-int v4, v0, v1

    .line 136
    .line 137
    iget v5, v12, Landroid/graphics/Rect;->top:I

    .line 138
    .line 139
    const-string v6, "Left Edge Extension"

    .line 140
    .line 141
    move-object v0, v8

    .line 142
    move-object v1, v9

    .line 143
    move-object/from16 p0, v10

    .line 144
    .line 145
    move v10, v7

    .line 146
    move-object v7, v11

    .line 147
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    move-object/from16 p0, v10

    .line 152
    .line 153
    move v10, v7

    .line 154
    :goto_0
    iget v0, v13, Landroid/graphics/Insets;->top:I

    .line 155
    .line 156
    if-gez v0, :cond_2

    .line 157
    .line 158
    new-instance v2, Landroid/graphics/Rect;

    .line 159
    .line 160
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    add-int/lit8 v3, v1, 0x1

    .line 165
    .line 166
    invoke-direct {v2, v0, v1, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 167
    .line 168
    .line 169
    new-instance v3, Landroid/graphics/Rect;

    .line 170
    .line 171
    iget v0, v13, Landroid/graphics/Insets;->top:I

    .line 172
    .line 173
    neg-int v0, v0

    .line 174
    invoke-direct {v3, v10, v10, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 175
    .line 176
    .line 177
    iget v4, v12, Landroid/graphics/Rect;->left:I

    .line 178
    .line 179
    iget v0, v12, Landroid/graphics/Rect;->top:I

    .line 180
    .line 181
    iget v1, v13, Landroid/graphics/Insets;->top:I

    .line 182
    .line 183
    add-int v5, v0, v1

    .line 184
    .line 185
    const-string v6, "Top Edge Extension"

    .line 186
    .line 187
    move-object v0, v8

    .line 188
    move-object v1, v9

    .line 189
    move-object v7, v11

    .line 190
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 191
    .line 192
    .line 193
    :cond_2
    iget v0, v13, Landroid/graphics/Insets;->right:I

    .line 194
    .line 195
    if-gez v0, :cond_3

    .line 196
    .line 197
    new-instance v2, Landroid/graphics/Rect;

    .line 198
    .line 199
    iget v0, v12, Landroid/graphics/Rect;->right:I

    .line 200
    .line 201
    add-int/lit8 v1, v0, -0x1

    .line 202
    .line 203
    iget v3, v12, Landroid/graphics/Rect;->top:I

    .line 204
    .line 205
    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    .line 206
    .line 207
    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 208
    .line 209
    .line 210
    new-instance v3, Landroid/graphics/Rect;

    .line 211
    .line 212
    iget v0, v13, Landroid/graphics/Insets;->right:I

    .line 213
    .line 214
    neg-int v0, v0

    .line 215
    invoke-direct {v3, v10, v10, v0, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 216
    .line 217
    .line 218
    iget v4, v12, Landroid/graphics/Rect;->right:I

    .line 219
    .line 220
    iget v5, v12, Landroid/graphics/Rect;->top:I

    .line 221
    .line 222
    const-string v6, "Right Edge Extension"

    .line 223
    .line 224
    move-object v0, v8

    .line 225
    move-object v1, v9

    .line 226
    move-object v7, v11

    .line 227
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 228
    .line 229
    .line 230
    :cond_3
    iget v0, v13, Landroid/graphics/Insets;->bottom:I

    .line 231
    .line 232
    if-gez v0, :cond_4

    .line 233
    .line 234
    new-instance v2, Landroid/graphics/Rect;

    .line 235
    .line 236
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 237
    .line 238
    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    .line 239
    .line 240
    add-int/lit8 v3, v1, -0x1

    .line 241
    .line 242
    iget v4, v12, Landroid/graphics/Rect;->right:I

    .line 243
    .line 244
    invoke-direct {v2, v0, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 245
    .line 246
    .line 247
    new-instance v3, Landroid/graphics/Rect;

    .line 248
    .line 249
    iget v0, v13, Landroid/graphics/Insets;->bottom:I

    .line 250
    .line 251
    neg-int v0, v0

    .line 252
    invoke-direct {v3, v10, v10, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 253
    .line 254
    .line 255
    iget v4, v12, Landroid/graphics/Rect;->left:I

    .line 256
    .line 257
    iget v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 258
    .line 259
    const-string v6, "Bottom Edge Extension"

    .line 260
    .line 261
    move-object v0, v8

    .line 262
    move-object v1, v9

    .line 263
    move-object v7, v11

    .line 264
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 265
    .line 266
    .line 267
    :cond_4
    iget-object v1, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 268
    .line 269
    monitor-enter v1

    .line 270
    :try_start_3
    iget-object v0, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 271
    .line 272
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    move-object/from16 v2, p0

    .line 277
    .line 278
    if-ne v0, v2, :cond_6

    .line 279
    .line 280
    iget-object v3, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    .line 281
    .line 282
    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 283
    :try_start_4
    iget-object v0, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_5

    .line 290
    .line 291
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :catchall_2
    move-exception v0

    .line 296
    goto :goto_2

    .line 297
    :cond_5
    :goto_1
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 298
    :try_start_5
    iget-object v0, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 299
    .line 300
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    iget-object v0, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 304
    .line 305
    invoke-virtual {v0, v9, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    iget-boolean v0, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 309
    .line 310
    if-nez v0, :cond_6

    .line 311
    .line 312
    iget-object v0, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 313
    .line 314
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_6

    .line 319
    .line 320
    iget-object v0, v8, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 321
    .line 322
    new-instance v2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;

    .line 323
    .line 324
    invoke-direct {v2, v8}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 328
    .line 329
    .line 330
    goto :goto_3

    .line 331
    :catchall_3
    move-exception v0

    .line 332
    goto :goto_5

    .line 333
    :goto_2
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 334
    :try_start_7
    throw v0

    .line 335
    :cond_6
    :goto_3
    monitor-exit v1

    .line 336
    :goto_4
    return-void

    .line 337
    :goto_5
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 338
    throw v0
.end method
