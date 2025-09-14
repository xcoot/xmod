.class public final Lcom/android/server/wm/WindowAnimationSpec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mAnimation:Landroid/view/animation/Animation;

.field public final mCanSkipFirstFrame:Z

.field public final mPosition:Landroid/graphics/Point;

.field public final mRootTaskBounds:Landroid/graphics/Rect;

.field public final mRootTaskClipMode:I

.field public final mThreadLocalTmps:Ljava/lang/ThreadLocal;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIF)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    .line 4
    new-instance v1, Lcom/android/server/wm/WindowAnimationSpec$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 7
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    if-eqz p2, :cond_0

    .line 8
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 9
    :cond_0
    iput p6, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    .line 11
    iput p5, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskClipMode:I

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V
    .locals 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIF)V

    return-void
.end method

.method public static findInterpolationAdjustedTargetFraction(Landroid/view/animation/Interpolator;F)F
    .locals 3

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    const/high16 v1, 0x3e800000    # 0.25f

    .line 4
    .line 5
    :goto_0
    const v2, 0x3c23d70a    # 0.01f

    .line 6
    .line 7
    .line 8
    cmpl-float v2, v1, v2

    .line 9
    .line 10
    if-ltz v2, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    cmpg-float v2, v2, p1

    .line 17
    .line 18
    if-gez v2, :cond_0

    .line 19
    .line 20
    add-float/2addr v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sub-float/2addr v0, v1

    .line 23
    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float/2addr v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v0
.end method

.method public static findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/view/animation/TranslateAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/view/animation/TranslateAnimation;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p0, Landroid/view/animation/AnimationSet;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/view/animation/Animation;

    .line 34
    .line 35
    instance-of v2, v1, Landroid/view/animation/TranslateAnimation;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    check-cast v1, Landroid/view/animation/TranslateAnimation;

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method


# virtual methods
.method public final apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 17
    .line 18
    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 19
    .line 20
    .line 21
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    iget-object p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    .line 28
    .line 29
    iget v1, p4, Landroid/graphics/Point;->x:I

    .line 30
    .line 31
    int-to-float v1, v1

    .line 32
    iget p4, p4, Landroid/graphics/Point;->y:I

    .line 33
    .line 34
    int-to-float p4, p4

    .line 35
    invoke-virtual {p3, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 36
    .line 37
    .line 38
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget-object p4, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 47
    .line 48
    .line 49
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 56
    .line 57
    .line 58
    iget p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskClipMode:I

    .line 59
    .line 60
    const/4 p4, 0x1

    .line 61
    if-ne p3, p4, :cond_1

    .line 62
    .line 63
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_4

    .line 70
    .line 71
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    iget-object p4, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 78
    .line 79
    invoke-virtual {p4}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 84
    .line 85
    invoke-static {p4, v0}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-virtual {p4, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    .line 95
    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 103
    .line 104
    iget-object p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    .line 105
    .line 106
    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    .line 108
    .line 109
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    if-eqz p3, :cond_2

    .line 116
    .line 117
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 118
    .line 119
    iget-object p4, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 120
    .line 121
    invoke-virtual {p4}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 126
    .line 127
    .line 128
    :cond_2
    iget-object p3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 129
    .line 130
    iget-object p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 131
    .line 132
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 137
    .line 138
    invoke-static {p3, v0}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p3, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_3

    .line 147
    .line 148
    invoke-virtual {p4, p3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 152
    .line 153
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 154
    .line 155
    .line 156
    :goto_0
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 157
    .line 158
    invoke-virtual {p3}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    .line 159
    .line 160
    .line 161
    move-result p3

    .line 162
    if-eqz p3, :cond_4

    .line 163
    .line 164
    iget p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    .line 165
    .line 166
    const/4 p3, 0x0

    .line 167
    cmpl-float p3, p0, p3

    .line 168
    .line 169
    if-lez p3, :cond_4

    .line 170
    .line 171
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 172
    .line 173
    .line 174
    :cond_4
    return-void
.end method

.method public final asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final calculateStatusBarTransitionStartTime()J
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/wm/WindowAnimationSpec;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->isXAxisTransition()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->isFullWidthTranslate()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/high16 v1, 0x3f000000    # 0.5f

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowAnimationSpec;->findInterpolationAdjustedTargetFraction(Landroid/view/animation/Interpolator;F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    add-long/2addr v3, v1

    .line 40
    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    long-to-float p0, v1

    .line 45
    mul-float/2addr p0, v0

    .line 46
    float-to-long v0, p0

    .line 47
    add-long/2addr v3, v0

    .line 48
    const-wide/16 v0, 0x3c

    .line 49
    .line 50
    :goto_0
    sub-long/2addr v3, v0

    .line 51
    return-wide v3

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const v1, 0x3f7d70a4    # 0.99f

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowAnimationSpec;->findInterpolationAdjustedTargetFraction(Landroid/view/animation/Interpolator;F)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    add-long/2addr v3, v1

    .line 72
    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    long-to-float p0, v1

    .line 77
    mul-float/2addr p0, v0

    .line 78
    float-to-long v0, p0

    .line 79
    add-long/2addr v3, v0

    .line 80
    const-wide/16 v0, 0x78

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    return-wide v0
.end method

.method public final canSkipFirstFrame()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    .line 2
    .line 3
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
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
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

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

.method public final getBackgroundColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getBackdropColor()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/animation/Animation;->computeDurationHint()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getShowBackground()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getShowWallpaper()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getShowWallpaper()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
