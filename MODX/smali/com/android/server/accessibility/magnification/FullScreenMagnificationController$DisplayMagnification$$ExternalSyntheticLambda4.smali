.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p2

    .line 15
    check-cast p4, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p3

    .line 21
    check-cast p5, Ljava/lang/Integer;

    .line 23
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p4

    .line 27
    iget-object p5, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 29
    iget-object p5, p5, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 31
    monitor-enter p5

    .line 32
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 34
    iget-object v1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 39
    invoke-virtual {v0, p0, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 45
    monitor-exit p5

    .line 46
    goto/16 :goto_3

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto/16 :goto_4

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 53
    iget-object v1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    .line 55
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 57
    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 59
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 61
    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 63
    iget-object v4, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 68
    neg-float v3, v3

    .line 69
    float-to-int v3, v3

    .line 70
    neg-float v1, v1

    .line 71
    float-to-int v1, v1

    .line 72
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 75
    const/high16 v1, 0x3f800000    # 1.0f

    .line 77
    div-float/2addr v1, v2

    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 81
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 83
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    iget-object v2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 88
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 90
    iget v3, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 92
    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_1

    .line 98
    sget-object v3, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-virtual {v2, v1, v3, v4}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 108
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 111
    move-result v2

    .line 112
    int-to-float v2, v2

    .line 113
    const/high16 v3, 0x40800000    # 4.0f

    .line 115
    div-float/2addr v2, v3

    .line 116
    const/4 v3, 0x1

    .line 117
    const/high16 v4, 0x41200000    # 10.0f

    .line 119
    invoke-static {v3, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 122
    move-result v1

    .line 123
    sub-int v3, p3, p0

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 128
    move-result v4

    .line 129
    const/4 v5, 0x0

    .line 130
    if-le v3, v4, :cond_3

    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 135
    move-result-object v2

    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_2

    .line 142
    iget p3, v0, Landroid/graphics/Rect;->left:I

    .line 144
    sub-int/2addr p0, p3

    .line 145
    int-to-float p0, p0

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 149
    sub-int/2addr p3, p0

    .line 150
    int-to-float p0, p3

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 154
    if-ge p0, v3, :cond_4

    .line 156
    sub-int/2addr p0, v3

    .line 157
    int-to-float p0, p0

    .line 158
    sub-float/2addr p0, v2

    .line 159
    goto :goto_1

    .line 160
    :cond_4
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 162
    if-le p3, p0, :cond_5

    .line 164
    sub-int/2addr p3, p0

    .line 165
    int-to-float p0, p3

    .line 166
    add-float/2addr p0, v2

    .line 167
    goto :goto_1

    .line 168
    :cond_5
    move p0, v5

    .line 169
    :goto_1
    sub-int p3, p4, p2

    .line 171
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 174
    move-result v2

    .line 175
    if-le p3, v2, :cond_6

    .line 177
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 179
    sub-int/2addr p2, p3

    .line 180
    int-to-float v5, p2

    .line 181
    goto :goto_2

    .line 182
    :cond_6
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 184
    if-ge p2, p3, :cond_7

    .line 186
    sub-int/2addr p2, p3

    .line 187
    int-to-float p2, p2

    .line 188
    sub-float v5, p2, v1

    .line 190
    goto :goto_2

    .line 191
    :cond_7
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 193
    if-le p4, p2, :cond_8

    .line 195
    sub-int/2addr p4, p2

    .line 196
    int-to-float p2, p4

    .line 197
    add-float v5, p2, v1

    .line 199
    :cond_8
    :goto_2
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 201
    iget p2, p2, Landroid/view/MagnificationSpec;->scale:F

    .line 203
    mul-float/2addr p0, p2

    .line 204
    mul-float/2addr v5, p2

    .line 205
    const/4 p2, -0x1

    .line 206
    invoke-virtual {p1, p2, p0, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->offsetMagnifiedRegion(IFF)V

    .line 209
    monitor-exit p5

    .line 210
    :goto_3
    return-void

    .line 211
    :goto_4
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    throw p0
.end method
