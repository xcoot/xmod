.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Lcom/android/server/wm/RecentsAnimationController;

.field public final synthetic f$2:Landroid/graphics/Region;

.field public final synthetic f$3:Landroid/graphics/Region;

.field public final synthetic f$4:Landroid/graphics/Region;

.field public final synthetic f$5:[I

.field public final synthetic f$6:Landroid/graphics/Region;

.field public final synthetic f$7:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/RecentsAnimationController;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$1:Lcom/android/server/wm/RecentsAnimationController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$2:Landroid/graphics/Region;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$3:Landroid/graphics/Region;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$4:Landroid/graphics/Region;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$5:[I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$6:Landroid/graphics/Region;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$7:Landroid/graphics/Region;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$1:Lcom/android/server/wm/RecentsAnimationController;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$2:Landroid/graphics/Region;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$3:Landroid/graphics/Region;

    .line 10
    .line 11
    iget-object v11, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$4:Landroid/graphics/Region;

    .line 12
    .line 13
    iget-object v12, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$5:[I

    .line 14
    .line 15
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$6:Landroid/graphics/Region;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->f$7:Landroid/graphics/Region;

    .line 18
    .line 19
    move-object/from16 v14, p1

    .line 20
    .line 21
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 v15, 0x1

    .line 27
    const/4 v10, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v5, v14, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    move v2, v15

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v2, v10

    .line 41
    :goto_0
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_8

    .line 46
    .line 47
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_8

    .line 52
    .line 53
    iget-object v5, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 54
    .line 55
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 56
    .line 57
    and-int/lit8 v6, v6, 0x10

    .line 58
    .line 59
    if-nez v6, :cond_8

    .line 60
    .line 61
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 62
    .line 63
    const/16 v6, 0xa29

    .line 64
    .line 65
    if-eq v5, v6, :cond_8

    .line 66
    .line 67
    const/16 v6, 0xa28

    .line 68
    .line 69
    if-eq v5, v6, :cond_8

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_8

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_1
    invoke-virtual {v14, v4}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 82
    .line 83
    .line 84
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 85
    .line 86
    invoke-virtual {v4, v3, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 109
    .line 110
    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    .line 111
    .line 112
    const/4 v5, 0x2

    .line 113
    if-ne v2, v5, :cond_3

    .line 114
    .line 115
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v14, v2}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_3

    .line 124
    .line 125
    iget-object v2, v14, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 126
    .line 127
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    .line 128
    .line 129
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    .line 130
    .line 131
    if-eqz v2, :cond_3

    .line 132
    .line 133
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 134
    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    .line 138
    .line 139
    const/16 v5, 0x1d

    .line 140
    .line 141
    if-ge v2, v5, :cond_3

    .line 142
    .line 143
    :goto_1
    invoke-virtual {v11, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_3
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    .line 148
    .line 149
    invoke-virtual {v11}, Landroid/graphics/Region;->setEmpty()V

    .line 150
    .line 151
    .line 152
    check-cast v2, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    move v6, v10

    .line 159
    :goto_2
    if-ge v6, v5, :cond_4

    .line 160
    .line 161
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Landroid/graphics/Rect;

    .line 166
    .line 167
    invoke-virtual {v11, v7}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 168
    .line 169
    .line 170
    add-int/lit8 v6, v6, 0x1

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_4
    iget v2, v14, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 174
    .line 175
    invoke-virtual {v11, v2}, Landroid/graphics/Region;->scale(F)V

    .line 176
    .line 177
    .line 178
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 179
    .line 180
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 181
    .line 182
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 183
    .line 184
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 185
    .line 186
    invoke-virtual {v11, v5, v2}, Landroid/graphics/Region;->translate(II)V

    .line 187
    .line 188
    .line 189
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 190
    .line 191
    invoke-virtual {v11, v4, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 192
    .line 193
    .line 194
    :goto_3
    invoke-static {v14, v10}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_5

    .line 199
    .line 200
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    .line 201
    .line 202
    aget v8, v12, v10

    .line 203
    .line 204
    const/4 v2, 0x0

    .line 205
    move-object v5, v11

    .line 206
    move-object v6, v13

    .line 207
    move-object v9, v14

    .line 208
    move/from16 v16, v10

    .line 209
    .line 210
    move v10, v2

    .line 211
    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    aput v2, v12, v16

    .line 216
    .line 217
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    .line 218
    .line 219
    aget v8, v12, v15

    .line 220
    .line 221
    const/4 v10, 0x1

    .line 222
    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    aput v2, v12, v15

    .line 227
    .line 228
    invoke-static {v11}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    .line 233
    .line 234
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 235
    .line 236
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 237
    .line 238
    .line 239
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    .line 240
    .line 241
    invoke-virtual {v2, v1, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 242
    .line 243
    .line 244
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 245
    .line 246
    invoke-virtual {v13, v2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_5
    invoke-static {v14, v15}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_6

    .line 258
    .line 259
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    .line 260
    .line 261
    const v8, 0x7fffffff

    .line 262
    .line 263
    .line 264
    const/4 v10, 0x0

    .line 265
    move-object v5, v11

    .line 266
    move-object v6, v13

    .line 267
    move-object v9, v14

    .line 268
    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 269
    .line 270
    .line 271
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    .line 272
    .line 273
    const/4 v10, 0x1

    .line 274
    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 275
    .line 276
    .line 277
    :cond_6
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 278
    .line 279
    invoke-virtual {v13, v11, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 280
    .line 281
    .line 282
    :goto_4
    if-eqz v0, :cond_7

    .line 283
    .line 284
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 285
    .line 286
    invoke-virtual {v0, v11, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 287
    .line 288
    .line 289
    :cond_7
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 290
    .line 291
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 292
    .line 293
    .line 294
    :cond_8
    :goto_5
    return-void
.end method
