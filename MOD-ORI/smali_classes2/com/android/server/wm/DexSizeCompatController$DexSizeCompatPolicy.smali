.class public final Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEnabled:Z

.field public final mHeight:I

.field public mLastTaskOrientation:I

.field public final mNonDecorInsets:[Landroid/graphics/Rect;

.field public final mStableInsets:[Landroid/graphics/Rect;

.field public final mTask:Lcom/android/server/wm/Task;

.field public final mTmpContainingBounds:Landroid/graphics/Rect;

.field public final mTmpFullScreenBounds:Landroid/graphics/Rect;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpStableBounds:Landroid/graphics/Rect;

.field public mUserOrientation:I

.field public mUserScale:F

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    .line 1
    iget v0, p2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2
    .line 3
    iget v1, p2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mEnabled:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iput v3, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mLastTaskOrientation:I

    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    new-array v5, v4, [Landroid/graphics/Rect;

    .line 18
    .line 19
    iput-object v5, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 20
    .line 21
    new-array v5, v4, [Landroid/graphics/Rect;

    .line 22
    .line 23
    iput-object v5, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mStableInsets:[Landroid/graphics/Rect;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mWidth:I

    .line 28
    .line 29
    iput v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mHeight:I

    .line 30
    .line 31
    move p1, v3

    .line 32
    :goto_0
    if-ge p1, v4, :cond_5

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 35
    .line 36
    new-instance v1, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    aput-object v1, v0, p1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mStableInsets:[Landroid/graphics/Rect;

    .line 44
    .line 45
    new-instance v1, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 48
    .line 49
    .line 50
    aput-object v1, v0, p1

    .line 51
    .line 52
    if-nez p2, :cond_0

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_0
    if-eq p1, v2, :cond_2

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    if-ne p1, v0, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v0, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    move v0, v2

    .line 64
    :goto_2
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mHeight:I

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    iget v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mWidth:I

    .line 70
    .line 71
    :goto_3
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mWidth:I

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    iget v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mHeight:I

    .line 77
    .line 78
    :goto_4
    invoke-virtual {p2, p1, v1, v0}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 83
    .line 84
    aget-object v1, v1, p1

    .line 85
    .line 86
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mStableInsets:[Landroid/graphics/Rect;

    .line 92
    .line 93
    aget-object v1, v1, p1

    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 98
    .line 99
    .line 100
    :goto_5
    add-int/lit8 p1, p1, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 105
    .line 106
    new-instance p1, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 112
    .line 113
    new-instance p1, Landroid/graphics/Rect;

    .line 114
    .line 115
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    .line 119
    .line 120
    new-instance p1, Landroid/graphics/Rect;

    .line 121
    .line 122
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpContainingBounds:Landroid/graphics/Rect;

    .line 126
    .line 127
    sget-object p1, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 128
    .line 129
    iget p1, p1, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->setUserScale(F)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Landroid/graphics/Rect;

    .line 135
    .line 136
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 140
    .line 141
    return-void
.end method

.method public static isRotatable(I)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method


# virtual methods
.method public final ensureDragBounds(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {v1, p1}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getFrameByOrientation(ILandroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-static {v1, p1}, Lcom/samsung/android/core/CompatUtils;->getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Lcom/samsung/android/core/CompatUtils;->adjustRoundScale(F)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 44
    .line 45
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 46
    .line 47
    const-string v5, "SizeCompatPolicy"

    .line 48
    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTaskBounds(Landroid/graphics/Rect;IFZ)Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lcom/samsung/android/core/CompatUtils;->getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-ne v3, v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eq v3, v4, :cond_2

    .line 83
    .line 84
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v0, "ensureDragBounds: userScale="

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, ", taskScale="

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move v2, v1

    .line 120
    :cond_2
    :goto_0
    move v0, v2

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v0, "ensureDragBounds: Display is null. mTask="

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :goto_1
    const/4 p1, 0x0

    .line 141
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->setUserScale(F)V

    .line 142
    .line 143
    .line 144
    iput p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 145
    .line 146
    return-void
.end method

.method public final fillSizeCompatInfoForDrag(Lcom/samsung/android/core/SizeCompatInfo;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p1, "fillSizeCompatInfoForDrag: Display is null. mTask="

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "SizeCompatPolicy"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v2, v1}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v4}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v6, 0x1

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    const/4 v7, 0x2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v7, v6

    .line 57
    :goto_0
    invoke-virtual {p1, v7}, Lcom/samsung/android/core/SizeCompatInfo;->setDragMode(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/core/SizeCompatInfo;->setDisplaySize(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-static {v8, v7}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v7, v4

    .line 83
    :goto_1
    iget-object v8, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getFrameByOrientation(ILandroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    iget-object v8, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    if-eqz v5, :cond_3

    .line 92
    .line 93
    if-eq v3, v7, :cond_3

    .line 94
    .line 95
    move v3, v6

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move v3, v9

    .line 98
    :goto_2
    if-eqz v3, :cond_4

    .line 99
    .line 100
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    :goto_3
    if-eqz v3, :cond_5

    .line 110
    .line 111
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    goto :goto_4

    .line 116
    :cond_5
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    :goto_4
    if-eqz v5, :cond_6

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 123
    .line 124
    invoke-virtual {v0, v9, v9, v7, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 128
    .line 129
    sget-object v1, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 130
    .line 131
    iget v1, v1, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 132
    .line 133
    xor-int/lit8 v2, v3, 0x1

    .line 134
    .line 135
    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/CompatUtils;->getScaledBounds(Landroid/graphics/Rect;FZ)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget-object p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/core/SizeCompatInfo;->setMinSize(II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v7, v10}, Lcom/samsung/android/core/SizeCompatInfo;->setMaxSize(II)V

    .line 154
    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getStableBounds(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p0, v4, v0, v8}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getMinScale(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-static {v7, p0}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-static {v10, p0}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    invoke-virtual {p1, v3, p0}, Lcom/samsung/android/core/SizeCompatInfo;->setMinSize(II)V

    .line 176
    .line 177
    .line 178
    if-gt v7, v2, :cond_8

    .line 179
    .line 180
    if-le v10, v1, :cond_7

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_7
    const/high16 p0, 0x3f800000    # 1.0f

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_8
    :goto_5
    invoke-static {v8, v0}, Lcom/samsung/android/core/CompatUtils;->getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    const v0, 0x3c23d70a    # 0.01f

    .line 191
    .line 192
    .line 193
    sub-float/2addr p0, v0

    .line 194
    invoke-static {p0}, Lcom/samsung/android/core/CompatUtils;->adjustFloorScale(F)F

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    :goto_6
    invoke-static {v7, p0}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-static {v10, p0}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/core/SizeCompatInfo;->setMaxSize(II)V

    .line 207
    .line 208
    .line 209
    :goto_7
    return-void
.end method

.method public final getFrameByOrientation(ILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mWidth:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mHeight:I

    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v2

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    move v0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p0

    .line 25
    :goto_1
    if-eqz p1, :cond_2

    .line 26
    .line 27
    move v1, p0

    .line 28
    :cond_2
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final getMinScale(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    iget v2, p1, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 18
    .line 19
    int-to-float p1, p1

    .line 20
    const/high16 v3, 0x43200000    # 160.0f

    .line 21
    .line 22
    div-float/2addr p1, v3

    .line 23
    int-to-float v2, v2

    .line 24
    mul-float/2addr v2, p1

    .line 25
    float-to-int p1, v2

    .line 26
    iget-object v2, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    move v3, p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    :goto_1
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    :cond_2
    invoke-virtual {v2, v0, v0, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-static {p3, p0}, Lcom/samsung/android/core/CompatUtils;->getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p0}, Lcom/samsung/android/core/CompatUtils;->adjustCeilScale(F)F

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0
.end method

.method public final getStableBounds(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6
    .line 7
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 8
    .line 9
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 10
    .line 11
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 12
    .line 13
    invoke-virtual {p1, v2, v3, v0}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    add-int/2addr p0, v0

    .line 33
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    return-object p1
.end method

.method public final getTaskBounds(Landroid/graphics/Rect;IFZ)Landroid/graphics/Rect;
    .locals 8

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v0, p3, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpContainingBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpContainingBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getStableBounds(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    move v2, p2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget v2, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-static {v0, v1}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getFrameByOrientation(ILandroid/graphics/Rect;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eq v2, v4, :cond_4

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v2, v5

    .line 69
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpContainingBounds:Landroid/graphics/Rect;

    .line 70
    .line 71
    if-eqz v2, :cond_5

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    goto :goto_2

    .line 78
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    :goto_2
    if-eqz v2, :cond_6

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    :goto_3
    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpContainingBounds:Landroid/graphics/Rect;

    .line 97
    .line 98
    invoke-static {v4, p3, v2}, Lcom/samsung/android/core/CompatUtils;->getScaledBounds(Landroid/graphics/Rect;FZ)V

    .line 99
    .line 100
    .line 101
    if-eqz p4, :cond_8

    .line 102
    .line 103
    if-nez v2, :cond_8

    .line 104
    .line 105
    iget-object p3, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpContainingBounds:Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    iget-object p4, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpContainingBounds:Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 114
    .line 115
    .line 116
    move-result p4

    .line 117
    if-gt p3, v0, :cond_7

    .line 118
    .line 119
    if-le p4, v1, :cond_8

    .line 120
    .line 121
    :cond_7
    invoke-static {v3, p1}, Lcom/samsung/android/core/CompatUtils;->getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    const p4, 0x3c23d70a    # 0.01f

    .line 126
    .line 127
    .line 128
    sub-float/2addr p3, p4

    .line 129
    invoke-static {p3}, Lcom/samsung/android/core/CompatUtils;->adjustFloorScale(F)F

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    iput p3, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    .line 134
    .line 135
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTaskBounds(Landroid/graphics/Rect;IFZ)Landroid/graphics/Rect;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpContainingBounds:Landroid/graphics/Rect;

    .line 141
    .line 142
    return-object p0
.end method

.method public final getTopOrientationInTask()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientationInChildren()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mLastTaskOrientation:I

    .line 15
    .line 16
    :cond_0
    iget p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mLastTaskOrientation:I

    .line 17
    .line 18
    return p0
.end method

.method public final isEnabled()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    sget-object v0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 7
    .line 8
    iget v2, v0, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/SizeCompatPolicyManager;->mDisplayIdsForActiveMode:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    if-ne v0, v2, :cond_4

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    return v2

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    :goto_0
    return v1
.end method

.method public final setUserScale(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 12
    .line 13
    iget p1, p1, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/core/CompatUtils;->adjustRoundScale(F)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    .line 20
    .line 21
    return-void
.end method

.method public final supportsSandbox(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mSizeCompatAttributes:Lcom/android/server/wm/SizeCompatAttributes;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/SizeCompatAttributes;->hasBounds()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    return v2

    .line 50
    :cond_2
    return v1
.end method
