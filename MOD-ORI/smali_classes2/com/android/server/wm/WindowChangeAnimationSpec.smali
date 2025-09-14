.class public final Lcom/android/server/wm/WindowChangeAnimationSpec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mAnimation:Landroid/view/animation/Animation;

.field public final mIsThumbnail:Z

.field public final mThreadLocalTmps:Ljava/lang/ThreadLocal;

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZ)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/WindowChangeAnimationSpec$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    iput-boolean p5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    .line 33
    .line 34
    const/high16 p2, 0x43a80000    # 336.0f

    .line 35
    .line 36
    mul-float/2addr p4, p2

    .line 37
    float-to-int p2, p4

    .line 38
    int-to-long v1, p2

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    sub-int/2addr p2, p4

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result p4

    .line 52
    add-int/2addr p4, p2

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    sub-int/2addr p4, p2

    .line 58
    const/4 p2, 0x1

    .line 59
    const/4 v3, 0x0

    .line 60
    if-ltz p4, :cond_0

    .line 61
    .line 62
    move p4, p2

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move p4, v3

    .line 65
    :goto_0
    long-to-float v4, v1

    .line 66
    const v5, 0x3f333333    # 0.7f

    .line 67
    .line 68
    .line 69
    mul-float/2addr v4, v5

    .line 70
    float-to-long v6, v4

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    int-to-float v4, v4

    .line 76
    mul-float/2addr v4, v5

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    int-to-float v8, v8

    .line 82
    div-float/2addr v4, v8

    .line 83
    const v8, 0x3e99999a    # 0.3f

    .line 84
    .line 85
    .line 86
    add-float/2addr v4, v8

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    int-to-float v9, v9

    .line 92
    mul-float/2addr v9, v5

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    int-to-float v5, v5

    .line 98
    div-float/2addr v9, v5

    .line 99
    add-float/2addr v9, v8

    .line 100
    const/high16 v5, 0x3f800000    # 1.0f

    .line 101
    .line 102
    if-eqz p5, :cond_2

    .line 103
    .line 104
    new-instance p3, Landroid/view/animation/AnimationSet;

    .line 105
    .line 106
    invoke-direct {p3, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    .line 110
    .line 111
    const/4 p5, 0x0

    .line 112
    invoke-direct {p2, v5, p5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 116
    .line 117
    .line 118
    if-nez p4, :cond_1

    .line 119
    .line 120
    sub-long p4, v1, v6

    .line 121
    .line 122
    invoke-virtual {p2, p4, p5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 123
    .line 124
    .line 125
    :cond_1
    invoke-virtual {p3, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    .line 127
    .line 128
    div-float p2, v5, v4

    .line 129
    .line 130
    div-float/2addr v5, v9

    .line 131
    new-instance p4, Landroid/view/animation/ScaleAnimation;

    .line 132
    .line 133
    invoke-direct {p4, p2, p2, v5, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, p4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 140
    .line 141
    .line 142
    iput-object p3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 153
    .line 154
    .line 155
    move-result p4

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {p3, p0, p2, p4, p1}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    new-instance p5, Landroid/view/animation/AnimationSet;

    .line 165
    .line 166
    invoke-direct {p5, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 167
    .line 168
    .line 169
    new-instance p2, Landroid/view/animation/ScaleAnimation;

    .line 170
    .line 171
    invoke-direct {p2, v4, v5, v9, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 175
    .line 176
    .line 177
    if-nez p4, :cond_3

    .line 178
    .line 179
    sub-long v4, v1, v6

    .line 180
    .line 181
    invoke-virtual {p2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 182
    .line 183
    .line 184
    :cond_3
    invoke-virtual {p5, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    .line 186
    .line 187
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    .line 188
    .line 189
    iget p4, v0, Landroid/graphics/Rect;->left:I

    .line 190
    .line 191
    int-to-float p4, p4

    .line 192
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 193
    .line 194
    int-to-float v4, v4

    .line 195
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 196
    .line 197
    int-to-float v5, v5

    .line 198
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 199
    .line 200
    int-to-float v6, v6

    .line 201
    invoke-direct {p2, p4, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p5, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 208
    .line 209
    .line 210
    new-instance p2, Landroid/graphics/Rect;

    .line 211
    .line 212
    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 213
    .line 214
    .line 215
    new-instance p4, Landroid/graphics/Rect;

    .line 216
    .line 217
    invoke-direct {p4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p4, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 224
    .line 225
    .line 226
    new-instance p1, Landroid/view/animation/ClipRectAnimation;

    .line 227
    .line 228
    invoke-direct {p1, p2, p4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p5, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 235
    .line 236
    .line 237
    iput-object p5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    iget p2, p3, Landroid/view/DisplayInfo;->appWidth:I

    .line 248
    .line 249
    iget p3, p3, Landroid/view/DisplayInfo;->appHeight:I

    .line 250
    .line 251
    invoke-virtual {p5, p0, p1, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 252
    .line 253
    .line 254
    :goto_1
    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    .line 16
    .line 17
    invoke-virtual {p0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 18
    .line 19
    .line 20
    iget-object p0, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    .line 27
    .line 28
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    .line 31
    iget-object p0, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    .line 44
    .line 45
    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 46
    .line 47
    .line 48
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    .line 55
    .line 56
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 57
    .line 58
    .line 59
    iget-object p4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    const/4 v2, 0x0

    .line 63
    aput v2, p4, v1

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    aput v2, p4, v1

    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    const/high16 v2, 0x3f800000    # 1.0f

    .line 70
    .line 71
    aput v2, p4, v1

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    aput v2, p4, v3

    .line 75
    .line 76
    invoke-virtual {p3, p4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 77
    .line 78
    .line 79
    aget p3, p4, v3

    .line 80
    .line 81
    div-float p3, v2, p3

    .line 82
    .line 83
    aput p3, p4, v3

    .line 84
    .line 85
    aget p3, p4, v1

    .line 86
    .line 87
    div-float/2addr v2, p3

    .line 88
    aput v2, p4, v1

    .line 89
    .line 90
    iget-object p3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    .line 91
    .line 92
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 97
    .line 98
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 99
    .line 100
    int-to-float v0, v0

    .line 101
    aget v2, p4, v3

    .line 102
    .line 103
    mul-float/2addr v0, v2

    .line 104
    const/high16 v3, 0x3f000000    # 0.5f

    .line 105
    .line 106
    add-float/2addr v0, v3

    .line 107
    float-to-int v0, v0

    .line 108
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 109
    .line 110
    iget v0, p3, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    int-to-float v0, v0

    .line 113
    mul-float/2addr v0, v2

    .line 114
    add-float/2addr v0, v3

    .line 115
    float-to-int v0, v0

    .line 116
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 117
    .line 118
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 119
    .line 120
    int-to-float v0, v0

    .line 121
    aget p4, p4, v1

    .line 122
    .line 123
    mul-float/2addr v0, p4

    .line 124
    add-float/2addr v0, v3

    .line 125
    float-to-int v0, v0

    .line 126
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 127
    .line 128
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 129
    .line 130
    int-to-float p3, p3

    .line 131
    mul-float/2addr p3, p4

    .line 132
    add-float/2addr p3, v3

    .line 133
    float-to-int p3, p3

    .line 134
    iput p3, p0, Landroid/graphics/Rect;->bottom:I

    .line 135
    .line 136
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 137
    .line 138
    .line 139
    :goto_0
    return-void
.end method

.method public final calculateStatusBarTransitionStartTime()J
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    long-to-float p0, v2

    .line 12
    const v2, 0x3f7d70a4    # 0.99f

    .line 13
    .line 14
    .line 15
    mul-float/2addr p0, v2

    .line 16
    float-to-long v2, p0

    .line 17
    add-long/2addr v2, v0

    .line 18
    const-wide/16 v4, 0x78

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method

.method public final canSkipFirstFrame()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    .line 1
    const-wide v0, 0x10b00000001L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-wide v2, 0x10900000001L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getShowWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
