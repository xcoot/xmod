.class public final Lcom/android/server/wm/SeamlessRotator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApplyFixedTransformHint:Z

.field public final mFixedTransformHint:I

.field public final mFloat9:[F

.field public final mNewRotation:I

.field public final mOldRotation:I

.field public final mTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(IILandroid/view/DisplayInfo;Z)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    .line 10
    .line 11
    const/16 v1, 0x9

    .line 12
    .line 13
    new-array v1, v1, [F

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    .line 18
    .line 19
    iput p2, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    .line 20
    .line 21
    iput-boolean p4, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    .line 22
    .line 23
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mFixedTransformHint:I

    .line 24
    .line 25
    iget p0, p3, Landroid/view/DisplayInfo;->rotation:I

    .line 26
    .line 27
    const/4 p4, 0x3

    .line 28
    const/4 v1, 0x1

    .line 29
    if-eq p0, v1, :cond_1

    .line 30
    .line 31
    if-ne p0, p4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move p0, v1

    .line 37
    :goto_1
    if-eqz p0, :cond_2

    .line 38
    .line 39
    iget v2, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    iget v2, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 43
    .line 44
    :goto_2
    if-eqz p0, :cond_3

    .line 45
    .line 46
    iget p0, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    iget p0, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 50
    .line 51
    :goto_3
    new-instance p3, Landroid/graphics/Matrix;

    .line 52
    .line 53
    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    .line 55
    .line 56
    const/high16 v3, 0x42b40000    # 90.0f

    .line 57
    .line 58
    const/high16 v4, 0x43340000    # 180.0f

    .line 59
    .line 60
    const-string v5, "Unknown rotation: "

    .line 61
    .line 62
    const/high16 v6, 0x43870000    # 270.0f

    .line 63
    .line 64
    const/4 v7, 0x2

    .line 65
    const/4 v8, 0x0

    .line 66
    if-eqz p1, :cond_7

    .line 67
    .line 68
    if-eq p1, v1, :cond_6

    .line 69
    .line 70
    if-eq p1, v7, :cond_5

    .line 71
    .line 72
    if-ne p1, p4, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 75
    .line 76
    .line 77
    neg-int p1, v2

    .line 78
    int-to-float p1, p1

    .line 79
    invoke-virtual {v0, p1, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-static {p1, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_5
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 94
    .line 95
    .line 96
    neg-int p1, p0

    .line 97
    int-to-float p1, p1

    .line 98
    neg-int v9, v2

    .line 99
    int-to-float v9, v9

    .line 100
    invoke-virtual {v0, p1, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 105
    .line 106
    .line 107
    neg-int p1, p0

    .line 108
    int-to-float p1, p1

    .line 109
    invoke-virtual {v0, v8, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 114
    .line 115
    .line 116
    :goto_4
    if-eqz p2, :cond_b

    .line 117
    .line 118
    if-eq p2, v1, :cond_a

    .line 119
    .line 120
    if-eq p2, v7, :cond_9

    .line 121
    .line 122
    if-ne p2, p4, :cond_8

    .line 123
    .line 124
    invoke-virtual {p3, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 125
    .line 126
    .line 127
    int-to-float p0, v2

    .line 128
    invoke-virtual {p3, p0, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    invoke-static {p2, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_9
    invoke-virtual {p3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 143
    .line 144
    .line 145
    int-to-float p0, p0

    .line 146
    int-to-float p1, v2

    .line 147
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_a
    invoke-virtual {p3, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 152
    .line 153
    .line 154
    int-to-float p0, p0

    .line 155
    invoke-virtual {p3, v8, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_b
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 160
    .line 161
    .line 162
    :goto_5
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 163
    .line 164
    .line 165
    return-void
.end method


# virtual methods
.method public final finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    .line 21
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 24
    .line 25
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    int-to-float v1, v1

    .line 31
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 32
    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    iget-object p0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/PrintWriter;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "{old="

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, ", new="

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p0, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo p0, "}"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "ForcedSeamlessRotator"

    .line 41
    .line 42
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public final unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    .line 10
    .line 11
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 12
    .line 13
    .line 14
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 15
    .line 16
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 17
    .line 18
    int-to-float v3, v3

    .line 19
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    const/4 v4, 0x2

    .line 23
    new-array v4, v4, [F

    .line 24
    .line 25
    aput v3, v4, v1

    .line 26
    .line 27
    aput v2, v4, v0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    aget v1, v4, v1

    .line 39
    .line 40
    aget v0, v4, v0

    .line 41
    .line 42
    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 43
    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/wm/SeamlessRotator;->mFixedTransformHint:I

    .line 52
    .line 53
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method
